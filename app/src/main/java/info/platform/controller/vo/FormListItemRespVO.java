package info.platform.controller.vo;

import io.swagger.annotations.ApiModel;
import lombok.Data;

@Data
@ApiModel(value = "Form item response VO")
public class FormListItemRespVO {
    private Integer id;
    private String name;
    private String description;
    private String schema;
}
