package xyz.nuze.services.model;

import lombok.Data;

import java.math.BigDecimal;
import java.util.List;

/**
 * @CreatyBy Michael
 * @Date 2019-07-24 14:02
 */

@Data
public class HouseInfo {
    private Integer houseId;
    private String city;
    private Integer hostId;
    private Double lat;
    private Double lng;
    private String brifeInfor;
    private String description;
    private Integer bedrooms;
    private Integer bathrooms;
    private Integer beds;
    private Integer guestCapacity;
    private String neighborhood;
    private String previewAmenities;
    private Integer reviewsCount;
    private Float starRating;
    private String spaceType;
    private BigDecimal price;
    private BigDecimal cleanFee;
    private List<String> imageList;

}
