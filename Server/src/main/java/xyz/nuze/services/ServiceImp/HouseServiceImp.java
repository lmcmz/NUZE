package xyz.nuze.services.ServiceImp;

import com.amazonaws.services.dynamodbv2.xspec.B;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xyz.nuze.error.BusinessException;
import xyz.nuze.error.EmBusinessError;
import xyz.nuze.mapper.BookingMapper;
import xyz.nuze.mapper.HouseMapper;
import xyz.nuze.mapper.HousePicUrlsMapper;
import xyz.nuze.mapper.HouseReviewMapper;
import xyz.nuze.model.*;
import xyz.nuze.services.HouseService;
import xyz.nuze.services.model.HouseInfo;

import java.util.ArrayList;
import java.util.List;

/**
 * @CreatyBy Michael
 * @Date 2019-07-16 22:09
 */

@Service
public class HouseServiceImp implements HouseService {

    @Autowired
    HouseMapper houseMapper;

    @Autowired
    HouseReviewMapper houseReviewMapper;

    @Autowired
    BookingMapper bookingMapper;

    @Autowired
    HousePicUrlsMapper housePicUrlsMapper;

    @Override
    public List<House> listHouseList(Integer limit, Integer offset, String city) throws BusinessException {
        List<House> houses = houseMapper.getHouseList(limit, offset, city);
        return houses;
    }

    @Override
    public List<HouseReview> listHouseReviews(Integer limit, Integer offset, Integer houseId) throws BusinessException {
        List<HouseReview> houseReviews = houseReviewMapper.getHouseReviews(limit, offset, houseId);
        return houseReviews;
    }

    @Override
    public void createHouseReview(Integer clientId, Integer hostId, Integer houseId, String review) throws BusinessException {
         HouseReview houseReview = new HouseReview();
         houseReview.setClientId(clientId);
         houseReview.setHostId(hostId);
         houseReview.setHouseId(houseId);
         houseReview.setComment(review);
         int result = houseReviewMapper.insertSelective(houseReview);
         if (result != 1) {
             throw new BusinessException(EmBusinessError.UNKNOWN_ERROR);
         }
    }

    @Override
    public House getHouseById(Integer houseId) throws BusinessException {
        House house = houseMapper.selectByPrimaryKey(houseId);
        return house;
    }

    @Override
    public HouseInfo getHouseInfoById(Integer houseId) throws BusinessException {
        List<House> houses = houseMapper.getHouseInfoById(houseId);
        if (houses.size() == 0) {
            return null;
        }
        HouseInfo houseInfo = new HouseInfo();
        BeanUtils.copyProperties(houses.get(0), houseInfo);
        List<String> images = new ArrayList<String>();
        for (House house: houses) {
            images.add(house.getPicUrl());
        }
        houseInfo.setImageList(images);
        return houseInfo;
    }

    @Override
    public void updateHouseInfo(House house) throws BusinessException {
        int result = houseMapper.updateByPrimaryKey(house);
        if (result != 1) {
            throw new BusinessException(EmBusinessError.PARAMETER_VALIDATION_ERROR);
        }
    }

    @Override
    public void booking(Booking booking) throws BusinessException {
        int result = bookingMapper.insertSelective(booking);
        if (result != 1) {
            throw new BusinessException(EmBusinessError.UNKNOWN_ERROR);
        }

    }

    @Override
    public List<Booking> getAllBookings(Integer clientId) throws BusinessException {
        BookingExample bookingExample = new BookingExample();
        BookingExample.Criteria criteria = bookingExample.createCriteria();
        criteria.andClientIdEqualTo(clientId);
        List<Booking> bookings = bookingMapper.selectByExample(bookingExample);
        return bookings;
    }

    @Override
    public Integer insertHouse(House house) throws BusinessException {
        int result = houseMapper.insertSelective(house);
        if (result != 1) {
            throw new BusinessException(EmBusinessError.PARAMETER_VALIDATION_ERROR);
        }
        return house.getHostId();
    }

    @Override
    public void insertHouseImage(HousePicUrls housePicUrls) throws BusinessException {
        int result = housePicUrlsMapper.insertSelective(housePicUrls);
        if (result != 1) {
            throw new BusinessException(EmBusinessError.PARAMETER_VALIDATION_ERROR);
        }
    }
}
