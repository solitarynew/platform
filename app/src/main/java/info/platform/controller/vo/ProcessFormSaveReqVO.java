package info.platform.controller.vo;

import io.swagger.annotations.ApiModel;
import lombok.Data;

import java.util.Map;

@Data
@ApiModel("Process Form Save Request VO")
public class ProcessFormSaveReqVO {

    @Data
    public static class ProcessFormItem {
        Integer queryFormId;
        Integer mutationFormId;
        String queryGraphql;
        String mutationGraphql;
    }
    String processId;
    Map<String, ProcessFormItem> items;
}
