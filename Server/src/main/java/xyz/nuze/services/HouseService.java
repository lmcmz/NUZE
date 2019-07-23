package xyz.nuze.services;

import org.apache.ibatis.annotations.Mapper;
import xyz.nuze.error.BusinessException;
import xyz.nuze.model.House;
import xyz.nuze.model.HouseReview;

import java.util.List;

/**
 * @CreatyBy Michael
 * @Date 2019-07-16 22:08
 */

@Mapper
public interface HouseService {
    List<House> listHouseList(Integer limit, Integer offset, String city) throws BusinessException;
    List<HouseReview> listHouseReviews(Integer limit, Integer offset, Integer houseId) throws BusinessException;
    void createHouseReview(Integer clientId, Integer houseId, String review)
}
