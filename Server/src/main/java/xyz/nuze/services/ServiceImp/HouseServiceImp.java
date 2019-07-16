package xyz.nuze.services.ServiceImp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xyz.nuze.mapper.HouseMapper;
import xyz.nuze.model.House;
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

    @Override
    public List<House> listHouseList(Integer limit, Integer offset) {
        List<House> houses = houseMapper.getHouseList(limit, offset);
        return houses;
    }
}
