package info.platform.controller.vo;

import io.swagger.annotations.ApiModel;
import lombok.Data;

@Data
@ApiModel("Form Update Request VO")
public class FormUpdateReqVO {
    Integer id;
    String name;
    String description;
    String schema;
}

