package xyz.nuze.controllers.viewObject;

import lombok.Data;
import xyz.nuze.model.Booking;

import java.util.List;

/**
 * @CreatyBy Michael
 * @Date 2019-08-02 21:14
 */
@Data
public class BookingVO {
    List<Booking> preBookings;
    List<Booking> bookings;
}
