package xyz.nuze.response;

/**
 * @CreatyBy Michael
 * @Date 2019-06-30 16:01
 */
public class CommonReturnType {
    /**
     *  response status success: 1 or fail:0
     */
    private int code;

    /**
     *  response message
     */
    private String msg;

    /**
     *  response data
     */
    private Object data;


    /**
     * @Description create function set default status as success
     * @param result  data payload
     *
     * @return
     */
    public static CommonReturnType create(Object result, String msg) {
        return CommonReturnType.create(result, 1, msg);
    }

    /**
     * @Description create function set default status as success and default result as null
     * @param msg successful message
     * @return
     */
    public static CommonReturnType create(String msg) {
        return CommonReturnType.create(null, 1, msg);
    }

    /**
     *
     * @param result data payload
     * @param status data status
     * @return
     */
    public static CommonReturnType create(Object result, int code, String msg) {
        CommonReturnType response = new CommonReturnType();
        response.setCode(code);
        response.setMsg(msg);
        response.setData(result);
        return response;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }

}
