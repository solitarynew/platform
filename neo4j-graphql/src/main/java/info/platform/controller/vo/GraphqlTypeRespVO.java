package info.platform.controller.vo;

import io.swagger.annotations.ApiModel;
import lombok.Data;

import java.util.Map;

;

@Data
@ApiModel("Graphql Type Response")
public class GraphqlTypeRespVO {
    private String name;

    private Map<String, String> fields;
}
