package xyz.nuze.services;

import org.apache.ibatis.annotations.Mapper;
import xyz.nuze.error.BusinessException;
import xyz.nuze.model.Booking;
import xyz.nuze.model.House;
import xyz.nuze.model.HousePicUrls;
import xyz.nuze.model.HouseReview;
import xyz.nuze.services.model.HouseInfo;

import java.util.List;

/**
 * @CreatyBy Michael
 * @Date 2019-07-16 22:08
 */

@Mapper
public interface HouseService {
    List<House> listHouseList(Integer limit, Integer offset, String city) throws BusinessException;
    List<HouseReview> listHouseReviews(Integer limit, Integer offset, Integer houseId) throws BusinessException;
    void createHouseReview(Integer clientId, Integer hostId, Integer houseId, String review) throws BusinessException;
    House getHouseById(Integer houseId) throws BusinessException;
    HouseInfo getHouseInfoById(Integer houseId) throws BusinessException;
    void updateHouseInfo(House house) throws BusinessException;
    void booking(Booking booking) throws BusinessException;
    List<Booking> getAllBookings(Integer clientId) throws BusinessException;
    Integer insertHouse(House house) throws BusinessException;
    void insertHouseImage(HousePicUrls housePicUrls) throws BusinessException;
}
