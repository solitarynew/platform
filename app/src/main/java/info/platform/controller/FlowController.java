package info.platform.controller;

import info.platform.common.result.ResponseData;
import info.platform.common.utils.BeanUtils;
import info.platform.controller.vo.*;
import info.platform.origin.GraphqlService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.flowable.bpmn.model.BpmnModel;
import org.flowable.engine.*;
import org.flowable.engine.repository.Deployment;
import org.flowable.engine.runtime.Execution;
import org.flowable.engine.runtime.ProcessInstance;
import org.flowable.image.ProcessDiagramGenerator;
import org.flowable.task.api.Task;
import org.neo4j.graphql.OptimizedQueryException;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api/flow")
@Api(tags = "Flow")
public class FlowController {

    @Resource
    private RepositoryService repositoryService;

    @Resource
    private RuntimeService runtimeService;

    @Resource
    private HistoryService historyService;

    @Resource
    private TaskService taskService;

    @Resource
    private ProcessEngine processEngine;

    @Resource
    private GraphqlService graphqlService;

    @RequestMapping(value = "/deploy", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
    public Deployment deploy() {
        return repositoryService.createDeployment()
                .addClasspathResource("Invoice.bpmn20.xml")
                .deploy();
    }

    @ApiOperation(value = "Flow Picture By TaskId")
    @RequestMapping(value = "/pic", method = RequestMethod.POST)
    public ResponseData<FlowPicByTaskIdRespVO> showPicByTaskId(HttpServletResponse resp, @RequestBody FlowPicByTaskIdReqVO flowPicByTaskIdReqVO) throws Exception {
        String processInstanceId = taskService.createTaskQuery()
                .taskId(flowPicByTaskIdReqVO.getTaskId()).singleResult().getProcessInstanceId();
        ProcessInstance pi = runtimeService.createProcessInstanceQuery()
                .processInstanceId(processInstanceId).singleResult();
        if (pi == null) {
            return ResponseData.error("Process instance not found");
        }
        List<Execution> executions = runtimeService
                .createExecutionQuery()
                .processInstanceId(processInstanceId)
                .list();

        List<String> activityIds = new ArrayList<>();
        List<String> flows = new ArrayList<>();
        for (Execution exe : executions) {
            List<String> ids = runtimeService.getActiveActivityIds(exe.getId());
            activityIds.addAll(ids);
        }

        /**
         * 生成流程图
         */
        BpmnModel bpmnModel = repositoryService.getBpmnModel(pi.getProcessDefinitionId());
        ProcessEngineConfiguration engconf = processEngine.getProcessEngineConfiguration();
        ProcessDiagramGenerator diagramGenerator = engconf.getProcessDiagramGenerator();
        byte[] buf = new byte[1024];
        int length = 0;
        FlowPicByTaskIdRespVO flowPicByTaskIdRespVO = new FlowPicByTaskIdRespVO();
        try (InputStream in = diagramGenerator.generateDiagram(bpmnModel, "png", activityIds, flows, engconf.getActivityFontName(), engconf.getLabelFontName(), engconf.getAnnotationFontName(), engconf.getClassLoader(), 1.0)
             ; ByteArrayOutputStream out = new ByteArrayOutputStream()) {
            while ((length = in.read(buf)) != -1) {
                out.write(buf, 0, length);
            }
            flowPicByTaskIdRespVO.setPic(out.toByteArray());
        }
        return ResponseData.success(flowPicByTaskIdRespVO);
    }

    @ApiOperation("Start Flow")
    @RequestMapping(value = "/start", method = RequestMethod.POST)
    public ResponseData<FlowStartRespVO> start(@RequestBody FlowStartReqVO req) {
        //ProcessInstance processInstance = runtimeService.startProcessInstanceById(deploymentId, variables);
        ProcessInstance processInstance = runtimeService.startProcessInstanceByKey(req.getDeploymentKey(), req.getVariables());;
        return ResponseData.success(BeanUtils.copyBean(processInstance, FlowStartRespVO.class));
    }

    @ApiOperation("Task Page")
    @RequestMapping(value = "tasks", method = RequestMethod.POST)
    public ResponseData<FlowTaskPageItemRespVO[]> tasks(@RequestBody FlowTaskPageReqVO req) {
        List<Task> tasks = new ArrayList<>(taskService.createTaskQuery().taskAssignee(req.getAssignee() == null ? "1" : req.getAssignee())
                .list());
        List<FlowTaskPageItemRespVO> list = new ArrayList<>();
        for (Task taskInfo : tasks) {
            FlowTaskPageItemRespVO vo = new FlowTaskPageItemRespVO();
            vo.setId(taskInfo.getId());
            vo.setName(taskInfo.getName());
            vo.setDescription(taskInfo.getDescription());
            vo.setProcessInstanceId(taskInfo.getProcessInstanceId());
            Map<String, Object> variables = taskService.getVariables(vo.getId());
            vo.setVariables(variables);
            list.add(vo);
        }
        return ResponseData.success(list.toArray(new FlowTaskPageItemRespVO[0]));
    }


    // 事务
    @RequestMapping(value = "complete", method = RequestMethod.POST)
    public ResponseData<Boolean> complete(@RequestBody FlowTaskCompleteReqVO req) {
        if (req.getVariables() != null && req.getVariables().containsKey("graphql")) {
            try {
                Object result = graphqlService.queryGraphQL(
                        req.getVariables().get("fileName").toString(),
                        req.getVariables().get("graphql").toString(),
                        null
                );
                taskService.setVariables(req.getVariables().get("taskId").toString(), Map.of("result", result));

            } catch (IOException | OptimizedQueryException e) {
                throw new RuntimeException(e);
            }
        }
        try {
            taskService.complete(req.getTaskId(), req.getVariables());
            return ResponseData.success(true);
        } catch (Exception e) {
            return ResponseData.error(e.getMessage());
        }

    }

    @RequestMapping(value = "/form", method = RequestMethod.POST)
    public ResponseData<FlowTaskFormRespVO> form(@RequestBody FlowTaskFormReqVO req) {
        String taskId = req.getTaskId();
        String TaskDefinitionKey = taskService.createTaskQuery().taskId(taskId).singleResult().getTaskDefinitionKey();
        String defaultschema = "[{\"title\":\"备注\",\"dataIndex\":\"comment\",\"formItemProps\":{\"rules\":[{\"required\":true,\"message\":\"此项为必填项\"}]},\"width\":\"md\",\"colProps\":{\"xs\":24,\"md\":12}},{\"title\":\"公司\",\"dataIndex\":\"company\",\"formItemProps\":{\"rules\":[{\"required\":true,\"message\":\"此项为必填项\"}]},\"width\":\"md\",\"colProps\":{\"xs\":24,\"md\":12}}]";
        FlowTaskFormRespVO vo = new FlowTaskFormRespVO();
        vo.setFormSchema(defaultschema);
        vo.setMutationGraphql("mutation($commment: String, $company: String) {\n" +
                "  createNormalInvoice(comment: $commment, company: $company) {\n" +
                "    _id\n" +
                "  }\n" +
                "}\n");
        return ResponseData.success(vo);
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ResponseData<Boolean> save(@RequestBody FlowTaskFormSaveReqVO req) throws OptimizedQueryException, IOException {
        String taskId = req.getTaskId();
        // 从taskId中或取出mutationGraphql
        String mutationGraphql = "mutation($comment: String, $company: String) {\n" +
                "  createNormalInvoice(comment: $comment, company: $company) {\n" +
                "    _id\n" +
                "  }\n" +
                "}\n";
        Object o = graphqlService.queryGraphQL("data.graphql", mutationGraphql, req.getVariables());
        taskService.setVariables(taskId, (Map<String, ? extends Object>) o);
        return ResponseData.success(true);
    }

    @RequestMapping(value = "/form/info", method = RequestMethod.POST)
    public ResponseData<Map<String, Object>> formInfo(@RequestBody FlowTaskFormInfoReqVO req) throws OptimizedQueryException, IOException {
        String taskId = req.getTaskId();
        // 从taskId中或取出queryGraphql
        String queryGraphql = "query($m: ID){\n" +
                "  normalInvoices(where: {_id: $m} ) {\n" +
                "    _id\n" +
                "    company\n" +
                "    comment\n" +
                "  }\n" +
                "}";
        Map<String, Object> o = (Map<String, Object>) graphqlService.queryGraphQL("data.graphql", queryGraphql, new HashMap<String, Object>() {{
            put("m", "3");
        }});
        return ResponseData.success((Map<String, Object>) ((List)o.get("normalInvoices")).get(0));
    }

}
