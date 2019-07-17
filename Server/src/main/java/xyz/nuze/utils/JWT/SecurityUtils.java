package xyz.nuze.utils.JWT;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;

/**
 * @CreatyBy Michael
 * @Date 2019-07-17 14:12
 */
@Component
public class SecurityUtils {

    @Autowired
    private static Environment env;

    @Autowired
    public SecurityUtils(Environment env) {
        SecurityUtils.env = env;
        SecurityUtils.signingKey = env.getProperty("SECRET");
        SecurityUtils.target = env.getProperty("TOKEN_PREFIX");
    }

    private static String signingKey;
    private static String target;


    // decode JWT token
    public static Integer getUserIdFromToken(HttpServletRequest request, String requestFrom) {
        String token = request.getHeader("Authorization");


        Claims claims = Jwts.parser()
                // 验签
                .setSigningKey(signingKey)
                // 去掉 Bearer
                .parseClaimsJws(token.replace(target, ""))
                .getBody();

        // 拿用户名
        String tokenStr = claims.getSubject();
        String[] splits = StringUtils.split(tokenStr, "_");
        if (2 != splits.length) {
            return null;
        }
        String userId = splits[0];
        String identifier = splits[1];

        if (!StringUtils.isNumeric(userId)) {
            return null;
        }

        if (StringUtils.equals(requestFrom, identifier)) {
            return Integer.parseInt(userId);
        }
        return null;
    }
}

