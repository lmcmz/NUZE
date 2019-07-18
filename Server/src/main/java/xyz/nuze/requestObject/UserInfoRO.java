package xyz.nuze.requestObject;

import lombok.Data;
import org.springframework.web.multipart.MultipartFile;

/**
 * @CreatyBy Michael
 * @Date 2019-07-18 20:59
 */
@Data
public class UserInfoRO {
    String name;
    String details;
    String selfInfo;
    MultipartFile picture;
}
