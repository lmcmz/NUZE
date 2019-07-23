package xyz.nuze.requestObject;

import lombok.Data;

/**
 * @CreatyBy Michael
 * @Date 2019-07-23 15:40
 */

@Data
public class BookingRO {
    Long checkIn;
    Long checkOut;
    Integer adults;
    Integer children;
    Integer rooms;
}
