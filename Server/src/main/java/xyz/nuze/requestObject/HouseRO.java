package xyz.nuze.requestObject;

import lombok.Data;
import org.springframework.web.multipart.MultipartFile;

import java.math.BigDecimal;

/**
 * @CreatyBy Michael
 * @Date 2019-07-31 19:14
 */
@Data
public class HouseRO {
    String city;
    Double lat;
    Double lng;
    String brifeInfor;
    String description;
    Integer bedrooms;
    Integer bathrooms;
    Integer beds;
    Integer guestCapacity;
    String previewAmenities;
    String spaceType;
    BigDecimal price;
    MultipartFile image1;
    MultipartFile image2;
    MultipartFile image3;
    MultipartFile image4;
    MultipartFile image5;
}
