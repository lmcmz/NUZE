package xyz.nuze.error;

/**
 * @CreatyBy Michael
 * @Date 2019-06-30 15:58
 */
public enum  EmBusinessError implements CommonError {
    // common error type
    PARAMETER_VALIDATION_ERROR(10001, "Invalid parameters."),
    UNKNOWN_ERROR(10002, "Unknown error."),
    SMS_ERROR(10003, "Sending message failed."),
    OPT_CODE_MATCH_ERROR(10004, "Otp code does not match."),
    UPLOAD_FILE_TYPE_ERROR(10005, "File type is invalided."),
    FILE_UPLOAD_ERROR(10006,"File upload error"),
    INVALID_RECAPTCHA_TOKEN(10007,"Invalid reCaptcha token."),
    INVALID_JWT_TOKEN(10007,"Invalid JWT token."),

    //User Error
    USER_NOT_EXIST(20001, "User is not exist."),
    INVALID_USERNAME_OR_PASSWORD(20002, "Invalid username or password."),
    USERNAME_HAS_BEEN_REGISTED(20003, "Username has been registered");


    private EmBusinessError(int errCode, String errMsg) {
        this.errCode = errCode;
        this.errMsg = errMsg;
    }

    private int errCode;
    private String errMsg;

    @Override
    public int getErrorCode() {
        return this.errCode;
    }

    @Override
    public String getErrorMsg() {
        return this.errMsg;
    }

    @Override
    public CommonError setErrMsg(String errMsg) {
        this.errMsg = errMsg;
        return this;
    }

}
