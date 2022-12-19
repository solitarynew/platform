package info.platform.controller.vo;

import io.swagger.annotations.ApiModel;
import lombok.Data;

@Data
@ApiModel("Form Request VO")
public class FormCreateReqVO {
    String name;
    String description;
    String schema;
}

