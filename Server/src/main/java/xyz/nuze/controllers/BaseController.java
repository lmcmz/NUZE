package xyz.nuze.controllers;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.multipart.MaxUploadSizeExceededException;
import xyz.nuze.error.BusinessException;
import xyz.nuze.error.EmBusinessError;
import xyz.nuze.response.CommonReturnType;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

/**
 * @CreatyBy Michael
 * @Date 2019-06-30 16:00
 */
@RestControllerAdvice
public class BaseController {

    @ExceptionHandler(Exception.class)
    @ResponseStatus(HttpStatus.OK)
    public Object handlerException(HttpServletRequest request, Exception ex) {
        Map<String, Object> responseData = new HashMap<>();
        if (ex instanceof BusinessException) {
            BusinessException businessException = (BusinessException)ex;
            responseData.put("errCode", businessException.getErrorCode());
            responseData.put("errMsg", businessException.getErrorMsg());
        } else {
            System.out.println(ex.getMessage());
            ex.printStackTrace();
            responseData.put("errCode", EmBusinessError.UNKNOWN_ERROR.getErrorCode());
            responseData.put("errMsg", EmBusinessError.UNKNOWN_ERROR.getErrorMsg());
        }

        return CommonReturnType.create(responseData, 0, "error");
    }

    @ExceptionHandler(MaxUploadSizeExceededException.class)
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    public Object handleMaxSizeException(MaxUploadSizeExceededException exc, HttpServletRequest request) {
        return CommonReturnType.create(null, 0, "File is too large.");
    }
}
