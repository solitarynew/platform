package info.platform.controller.vo;

import info.platform.common.result.PageParam;
import io.swagger.annotations.ApiModel;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@Data
@ApiModel("Task Page Request")
@EqualsAndHashCode(callSuper = true)
@ToString(callSuper = true)
public class FlowTaskPageReqVO extends PageParam {
    String assignee;
}
