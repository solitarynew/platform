package info.platform.convert;

import info.platform.controller.vo.ProcessFormItemRespVO;
import info.platform.model.entity.ProcessFormDO;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

import java.util.List;

@Mapper
public interface ProcessFormConvert {
    public static final ProcessFormConvert INSTANCE = Mappers.getMapper(ProcessFormConvert.class);

    ProcessFormItemRespVO convert(ProcessFormDO processForm);
    List<ProcessFormItemRespVO> convertList(List<ProcessFormDO> processFormList);

}
