package xyz.nuze.error;

/**
 * @CreatyBy Michael
 * @Date 2019-06-30 15:57
 */
public class BusinessException extends Exception implements CommonError {

    private CommonError commonError;

    public BusinessException(CommonError commonError) {
        super();
        this.commonError =commonError;
    }

    public BusinessException(CommonError commonError, String errMsg) {
        super();
        this.commonError = commonError;
        this.commonError.setErrMsg(errMsg);
    }

    @Override
    public int getErrorCode() {
        return this.commonError.getErrorCode();
    }

    @Override
    public String getErrorMsg() {
        return this.commonError.getErrorMsg();
    }

    @Override
    public CommonError setErrMsg(String errMsg) {
        this.commonError.setErrMsg(errMsg);
        return this;
    }
}

