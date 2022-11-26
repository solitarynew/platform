package info.platform.controller.vo;

import io.swagger.annotations.ApiModel;
import lombok.Data;

import java.util.Map;

@Data
@ApiModel("Flow Task Form Save Request")
public class FlowTaskFormSaveReqVO {
    String taskId;
    Map<String, Object> variables;
}
