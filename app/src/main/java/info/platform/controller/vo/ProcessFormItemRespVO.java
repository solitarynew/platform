package info.platform.controller.vo;

import io.swagger.annotations.ApiModel;
import lombok.Data;

@Data
@ApiModel("Process Form Response VO")
public class ProcessFormItemRespVO {
    String taskId;
    Integer queryFormId;
    Integer mutationFormId;
    String queryGraphql;
    String mutationGraphql;
}
