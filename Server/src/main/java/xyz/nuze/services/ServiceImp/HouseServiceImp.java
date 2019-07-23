package xyz.nuze.services.ServiceImp;

import com.amazonaws.services.dynamodbv2.xspec.B;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xyz.nuze.error.BusinessException;
import xyz.nuze.error.EmBusinessError;
import xyz.nuze.mapper.HouseMapper;
import xyz.nuze.mapper.HouseReviewMapper;
import xyz.nuze.model.House;
import xyz.nuze.model.HouseReview;
import xyz.nuze.model.HouseReviewExample;
import xyz.nuze.services.HouseService;

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
}
