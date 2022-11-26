package info.platform.controller.vo;

import io.swagger.annotations.ApiModel;
import lombok.Data;

@Data
@ApiModel("Flow Pic By TaskId")
public class FlowPicByTaskIdReqVO {
    private String taskId;
}
