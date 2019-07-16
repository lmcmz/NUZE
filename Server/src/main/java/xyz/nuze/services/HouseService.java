package xyz.nuze.services;

import org.apache.ibatis.annotations.Mapper;
import xyz.nuze.model.House;

import java.util.List;

/**
 * @CreatyBy Michael
 * @Date 2019-07-16 22:08
 */

@Mapper
public interface HouseService {
    List<House> listHouseList(Integer limit, Integer offset);
}
