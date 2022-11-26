package info.platform.controller.vo;

import io.swagger.annotations.ApiModel;
import lombok.Data;

import java.util.Map;

@Data
@ApiModel("Flow Start Request")
public class FlowStartReqVO {
    private String deploymentKey;
    private Map<String, Object> variables;
}
