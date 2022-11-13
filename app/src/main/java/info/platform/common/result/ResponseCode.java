package info.platform.common.result;

/**
 * API 统一返回状态码
 *
 */
public enum ResponseCode {

    /* 公共状态码 */
    // 成功
    SUCCESS(200, "成功"),
    //失败
    FAILED(400, "失败");

    private Integer code;

    private String message;

    ResponseCode(int code, String message) {
        this.code = code;
        this.message = message;
    }

    public int getCode() {
        return code;
    }

    public String getMessage() {
        return message;
    }
}