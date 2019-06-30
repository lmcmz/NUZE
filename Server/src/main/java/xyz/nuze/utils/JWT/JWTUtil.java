package xyz.nuze.utils.JWT;

import org.json.JSONObject;

/**
 * @CreatyBy Michael
 * @Date 2019-06-30 15:42
 */
public class JWTUtil {
    public static String fillResultString(final Integer status, final String message, final Object result){
        JSONObject jsonObject = new JSONObject(){{
            put("code", status);
            put("msg", message);
            put("data", result);
        }};
        return jsonObject.toString();
    }
}

