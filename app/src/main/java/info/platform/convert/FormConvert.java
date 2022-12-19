package info.platform.convert;

import info.platform.controller.vo.FormCreateReqVO;
import info.platform.controller.vo.FormListItemRespVO;
import info.platform.controller.vo.FormUpdateReqVO;
import info.platform.model.entity.FormDO;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

import java.util.List;

@Mapper
public interface FormConvert {
    public static final FormConvert INSTANCE = Mappers.getMapper(FormConvert.class);

    FormListItemRespVO convert(FormDO form);

    List<FormListItemRespVO> convertList(List<FormDO> formList);

    FormDO convert(FormCreateReqVO formCreateReqVO);

    FormDO convert(FormUpdateReqVO formUpdateReqVO);
}
