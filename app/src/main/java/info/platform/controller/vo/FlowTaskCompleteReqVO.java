package info.platform.controller.vo;

import io.swagger.annotations.ApiModel;
import lombok.Data;

import java.util.Map;

@Data
@ApiModel("Flow Task Complete Request")
public class FlowTaskCompleteReqVO {
    String taskId;
    Map<String, Object> variables;
}
