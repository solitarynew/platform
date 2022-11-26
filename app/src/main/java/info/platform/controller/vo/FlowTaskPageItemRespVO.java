package info.platform.controller.vo;

import io.swagger.annotations.ApiModel;
import lombok.Data;

import java.util.Map;

@Data
@ApiModel("Task Page Response")
public class FlowTaskPageItemRespVO {
     String id;
     String name;
     String description;
     String processInstanceId;
     Map<String, Object> variables;
}
