package info.platform.controller;

import org.flowable.bpmn.model.BpmnModel;
import org.flowable.engine.*;
import org.flowable.engine.repository.Deployment;
import org.flowable.engine.runtime.Execution;
import org.flowable.engine.runtime.ProcessInstance;
import org.flowable.image.ProcessDiagramGenerator;
import org.flowable.task.api.TaskInfo;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
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
    public String start(String deploymentId, Map<String, Object> variables) {
        ProcessInstance processInstance = runtimeService.startProcessInstanceById(deploymentId, variables);
        return processInstance.getId();
    }

    @RequestMapping(value = "tasks", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
    public List<String> tasks(String assignee) {
        return taskService.createTaskQuery().taskAssignee(assignee).list().stream().map(TaskInfo::getId).collect(java.util.stream.Collectors.toList());
    }

    @RequestMapping(value = "complete", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
    public void complete(String taskId, Map<String, Object> variables) {
        taskService.complete(taskId, variables);
    }


}
