package xyz.nuze.controllers;

import com.amazonaws.services.dynamodbv2.xspec.B;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xyz.nuze.controllers.viewObject.BookingVO;
import xyz.nuze.error.BusinessException;
import xyz.nuze.error.EmBusinessError;
import xyz.nuze.model.Booking;
import xyz.nuze.model.House;
import xyz.nuze.response.CommonReturnType;
import xyz.nuze.services.HouseService;
import xyz.nuze.utils.JWT.SecurityUtils;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @CreatyBy Michael
 * @Date 2019-07-31 12:19
 */

@RestController
@CrossOrigin
@RequestMapping(value = "/booking")
public class BookingController extends BaseController {

    @Autowired
    HouseService houseService;

    @GetMapping("")
    @ApiOperation(value = "get booking info" ,  notes="get booking info")
    public CommonReturnType getHouseInfoList(HttpServletRequest request,
            @ApiParam @RequestParam(value = "offset", defaultValue = "0") Integer offset,
            @ApiParam @RequestParam(value = "limit", defaultValue = "10") Integer limit) throws BusinessException {

        Integer clientId = SecurityUtils.getUserIdFromToken(request, "client");
        if (clientId == null) {
            throw new BusinessException(EmBusinessError.INVALID_JWT_TOKEN);
        }
        List<Booking> bookings = houseService.getAllBookings(clientId);
        BookingVO bookingVO = new BookingVO();
        bookingVO.setBookings(new ArrayList<>());
        bookingVO.setPreBookings(new ArrayList<>());
        Date now = new Date();
        for(Booking booking: bookings) {
            if (booking.getCheckOut().getTime() <= now.getTime()) {
                bookingVO.getPreBookings().add(booking);
            } else {
                bookingVO.getBookings().add(booking);
            }
        }
        return CommonReturnType.create(bookingVO, "get success");
    }
}
