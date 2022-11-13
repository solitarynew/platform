package info.platform.controller;

import info.platform.origin.GraphqlService;
import org.flowable.bpmn.model.BpmnModel;
import org.flowable.engine.*;
import org.flowable.engine.repository.Deployment;
import org.flowable.engine.runtime.Execution;
import org.flowable.engine.runtime.ProcessInstance;
import org.flowable.image.ProcessDiagramGenerator;
import org.flowable.task.api.TaskInfo;
import org.neo4j.graphql.OptimizedQueryException;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/flow")
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

    @GetMapping("/pic")
    public void showPic(HttpServletResponse resp, String processId) throws Exception {
        ProcessInstance pi = runtimeService.createProcessInstanceQuery().processInstanceId(processId).singleResult();
        if (pi == null) {
            return;
        }
        List<Execution> executions = runtimeService
                .createExecutionQuery()
                .processInstanceId(processId)
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
        int legth = 0;
        try (InputStream in = diagramGenerator.generateDiagram(bpmnModel, "png", activityIds, flows, engconf.getActivityFontName(), engconf.getLabelFontName(), engconf.getAnnotationFontName(), engconf.getClassLoader(), 1.0); OutputStream out = resp.getOutputStream()) {
            while ((legth = in.read(buf)) != -1) {
                out.write(buf, 0, legth);
            }
        }
    }

    @RequestMapping(value = "/start", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
    public String start(String deploymentKey, Map<String, Object> variables) {
        //ProcessInstance processInstance = runtimeService.startProcessInstanceById(deploymentId, variables);
        ProcessInstance processInstance = runtimeService.startProcessInstanceByKey(deploymentKey, variables);
        return processInstance.getId();
    }

    @RequestMapping(value = "tasks", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
    public Map<String, Map<String, Object>> tasks(String assignee) {
        List<String> Ids = taskService.createTaskQuery().taskAssignee(assignee).list().stream().map(TaskInfo::getId).collect(java.util.stream.Collectors.toList());
        HashMap<String, Map<String, Object>> map = new HashMap<>();
        Ids.forEach(id -> {
            Map<String, Object> task = taskService.getVariables(id);
            map.put(id, task);
        });
        return map;
    }


    // 事务
    @RequestMapping(value = "complete", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
    public void complete(@RequestBody Map<String, Object> variables) {
        if (variables.containsKey("graphql")) {
            try {
                Object result = graphqlService.queryGraphQL(
                        variables.get("fileName").toString(),
                        variables.get("graphql").toString()
                );
                taskService.setVariables(variables.get("taskId").toString(), Map.of("result", result));

            } catch (IOException | OptimizedQueryException e) {
                throw new RuntimeException(e);
            }
        }
        taskService.complete(variables.get("taskId").toString(), variables);
    }


}
