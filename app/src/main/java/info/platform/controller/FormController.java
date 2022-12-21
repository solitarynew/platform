package info.platform.controller;

import info.platform.common.result.ResponseData;
import info.platform.controller.vo.FormCreateReqVO;
import info.platform.controller.vo.FormDeleteReqVO;
import info.platform.controller.vo.FormListItemRespVO;
import info.platform.controller.vo.FormUpdateReqVO;
import info.platform.convert.FormConvert;
import info.platform.model.dao.FormRepository;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping("/api/form")
@Api(tags = "Form")
public class FormController {

    @Resource
    private FormRepository formRepository;

    @ApiOperation(value = "Form list", notes = "Form list")
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public ResponseData<List<FormListItemRespVO>> list() {
        return ResponseData.success(FormConvert.INSTANCE.convertList(formRepository.findAll()));
    }

    @ApiOperation(value = "Get form by id")
    @ApiImplicitParam(name = "id", value = "Form id", required = true, dataType = "Long")
    @RequestMapping(value = "/get", method = RequestMethod.GET)
    public ResponseData<FormListItemRespVO> get(@RequestParam("id") Integer id) {
        return ResponseData.success(FormConvert.INSTANCE.convert(formRepository.findById(id).get()));
    }

    @ApiOperation(value = "Form create", notes = "Form create")
    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public ResponseData<Boolean> create(@RequestBody FormCreateReqVO formCreateReqVO) {
        formRepository.save(FormConvert.INSTANCE.convert(formCreateReqVO));
        return ResponseData.success(true);
    }

    @ApiOperation(value = "Form update", notes = "Form update")
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public ResponseData<Boolean> update(@RequestBody FormUpdateReqVO formUpdateReqVO) {
        formRepository.save(FormConvert.INSTANCE.convert(formUpdateReqVO));
        return ResponseData.success(true);
    }

    @ApiOperation(value = "Form delete", notes = "Form delete")
    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public ResponseData<Boolean> delete(@RequestBody FormDeleteReqVO formDeleteReqVO) {
        try {
            formRepository.deleteById(formDeleteReqVO.getId());
        } catch (Exception e) {
            return ResponseData.error(e.getMessage());
        }
        return ResponseData.success(true);
    }

    @ApiOperation(value = "Forms delete", notes = "Forms delete")
    @ApiImplicitParam(name = "ids", value = "Form ids", required = true, dataType = "List")
    @RequestMapping(value = "/deletes", method = RequestMethod.POST)
    public ResponseData<Boolean> deletes(@RequestParam("ids") List<Integer> ids) {
        try {
            formRepository.deleteAllById(ids);
        } catch (Exception e) {
            return ResponseData.error(e.getMessage());
        }
        return ResponseData.success(true);
    }


}
