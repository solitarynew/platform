package info.platform.common.result;

import io.swagger.annotations.ApiModel;

import java.io.Serializable;

/**
 * 统一API响应结果封装
 *
 */
@ApiModel("Response Data")
public class ResponseData<T> implements Serializable {

    /**
     * 是否成功
     */
    private boolean success;

    /**
     * 响应状态码
     */
    private Integer errorCode;

    /**
     * 响应信息
     */
    private String errorMessage;

    /**
     * 响应对象
     */
    private T data;

    private ResponseData() {
    }

    private ResponseData(T data) {
        this.data = data;
    }

    private ResponseData(boolean success, String errorMessage) {
        this.success = success;
        this.errorMessage = errorMessage;
    }

    private ResponseData(boolean success, Integer errorCode, String errorMessage) {
        this.success = success;
        this.errorCode = errorCode;
        this.errorMessage = errorMessage;
    }

    private ResponseData(boolean success, Integer errorCode, String errorMessage, T data) {
        this.success = success;
        this.errorCode = errorCode;
        this.errorMessage = errorMessage;
        this.data = data;
    }

    public boolean getSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }

    public Integer getErrorCode() {
        return errorCode;
    }

    public void setErrorCode(Integer errorCode) {
        this.errorCode = errorCode;
    }

    public String getErrorMessage() {
        return errorMessage;
    }

    public void setErrorMessage(String errorMessage) {
        this.errorMessage = errorMessage;
    }


    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }

    public static ResponseData success() {
        return new ResponseData(true, ResponseCode.SUCCESS.getCode(), ResponseCode.SUCCESS.getMessage(), null);
    }

    public static <E> ResponseData<E> success(E object) {
        return new ResponseData(true, ResponseCode.SUCCESS.getCode(), ResponseCode.SUCCESS.getMessage(), object);
    }

    public static <E> ResponseData<E> success(Integer code, String message, E object) {
        return new ResponseData(true, code, message, object);
    }

    public static ResponseData error() {
        return new ResponseData(false, ResponseCode.FAILED.getCode(), ResponseCode.FAILED.getMessage(), null);
    }

    public static ResponseData error(ResponseCode code) {
        return new ResponseData(false, code.getCode(), code.getMessage(), null);
    }

    public static ResponseData error(String message) {
        return new ResponseData(false, ResponseCode.FAILED.getCode(), message, null);
    }

    public static ResponseData error(Integer code, String message) {
        return new ResponseData(false, code, message, null);
    }

    public static <E> ResponseData<E> error(Integer code, String message, E object) {
        return new ResponseData(false, code, message, object);
    }
}

