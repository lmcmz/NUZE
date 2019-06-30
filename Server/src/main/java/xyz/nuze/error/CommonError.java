package xyz.nuze.error;

/**
 * @CreatyBy Michael
 * @Date 2019-06-30 15:57
 */
public interface CommonError {
    public int getErrorCode();

    public String getErrorMsg();

    public CommonError setErrMsg(String errMsg);

}
