package xyz.nuze.response;

/**
 * @CreatyBy Michael
 * @Date 2019-06-30 16:01
 */
public enum  CommonResponseEnum {
    // Common
    VERIFICATION_CODE_SUCCESS("Code has been generated."),
    SUBMIT_SUCCESS("Data has been submitted."),
    UPDATE_SUCCESS("Update successfully."),
    // USER
    RESET_PASSWORD_SUCCESS("Reset password successfully"),
    REGISTER_SUCCESS("Register successfully")
    ;
    public final String msg;

    CommonResponseEnum(String msg) {
        this.msg = msg;
    }

}
