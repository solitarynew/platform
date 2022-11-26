package info.platform.controller.vo;

import io.swagger.annotations.ApiModel;
import lombok.Data;

@Data
@ApiModel("Flow Task Form Request")
public class FlowTaskFormReqVO {
    String taskId;
}
