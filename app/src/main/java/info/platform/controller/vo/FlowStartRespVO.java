package info.platform.controller.vo;

import io.swagger.annotations.ApiModel;
import lombok.Data;

@Data
@ApiModel("Flow Start Response")
public class FlowStartRespVO {
    private String processDefinitionId;
    private String processDefinitionName;
    private String processDefinitionKey;
    private String processInstanceId;
}
