package xyz.nuze.controllers;

import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xyz.nuze.error.BusinessException;
import xyz.nuze.model.House;
import xyz.nuze.response.CommonReturnType;
import xyz.nuze.services.HouseService;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @CreatyBy Michael
 * @Date 2019-07-16 22:02
 */

@RestController
@CrossOrigin
@RequestMapping(value = "/house")
public class HouseController extends BaseController {

    @Autowired
    HouseService houseService;

    @GetMapping("")
    public CommonReturnType getHouseInfo(
        @ApiParam @RequestParam(value = "city", defaultValue = "Sydney") String city,
        @ApiParam @RequestParam(value = "offset", defaultValue = "0") Integer offset,
        @ApiParam @RequestParam(value = "limit", defaultValue = "10") Integer limit) throws BusinessException {

        List<House> houseList = houseService.listHouseList(limit, offset, city);
        return CommonReturnType.create(houseList, "get success");
    }

}

