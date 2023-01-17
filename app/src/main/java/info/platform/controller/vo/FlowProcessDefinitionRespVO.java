package info.platform.controller.vo;

import io.swagger.annotations.ApiModel;
import lombok.Data;

import java.util.List;

@Data
@ApiModel("Flow Deployment Response")
public class FlowProcessDefinitionRespVO {
    private String id;
    private String name;
    private String key;
    private String description;
    private int version;
    private List<String> taskDefinitionKeys;
}
