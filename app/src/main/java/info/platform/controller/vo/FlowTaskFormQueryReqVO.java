package info.platform.controller.vo;

import io.swagger.annotations.ApiModel;
import lombok.Data;

@Data
@ApiModel(value = "Flow Task Form Query Request")
public class FlowTaskFormQueryReqVO {
    String taskId;
}
