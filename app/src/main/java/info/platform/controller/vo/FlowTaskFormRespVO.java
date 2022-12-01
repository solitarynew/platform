package info.platform.controller.vo;

import io.swagger.annotations.ApiModel;
import lombok.Data;

@Data
@ApiModel("Flow Task Form Response")
public class FlowTaskFormRespVO {
    String querySchema;
    String mutationSchema;
}
