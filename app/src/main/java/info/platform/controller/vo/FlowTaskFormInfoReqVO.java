package info.platform.controller.vo;

import io.swagger.annotations.ApiModel;
import lombok.Data;

@Data
@ApiModel("Flow Task Form Info Request")
public class FlowTaskFormInfoReqVO {
    String taskId;
}
