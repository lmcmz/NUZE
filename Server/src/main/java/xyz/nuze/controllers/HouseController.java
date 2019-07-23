package xyz.nuze.controllers;

import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xyz.nuze.error.BusinessException;
import xyz.nuze.error.EmBusinessError;
import xyz.nuze.model.House;
import xyz.nuze.model.HouseReview;
import xyz.nuze.response.CommonReturnType;
import xyz.nuze.services.HouseService;
import xyz.nuze.utils.JWT.SecurityUtils;

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
    @ApiOperation(value = "get house info" ,  notes="get house info")
    public CommonReturnType getHouseInfo(
        @ApiParam @RequestParam(value = "city", defaultValue = "Sydney") String city,
        @ApiParam @RequestParam(value = "offset", defaultValue = "0") Integer offset,
        @ApiParam @RequestParam(value = "limit", defaultValue = "10") Integer limit) throws BusinessException {

        List<House> houseList = houseService.listHouseList(limit, offset, city);
        return CommonReturnType.create(houseList, "get success");
    }

    @GetMapping("{houseId}/review")
    @ApiOperation(value = "get house review" ,  notes="get house review")
    public CommonReturnType getHouseReview(
            @PathVariable("houseId") Integer houseId,
            @ApiParam @RequestParam(value = "offset", defaultValue = "0") Integer offset,
            @ApiParam @RequestParam(value = "limit", defaultValue = "10") Integer limit) throws BusinessException {

        List<HouseReview> houseReviews = houseService.listHouseReviews(limit, offset, houseId);
        return CommonReturnType.create(houseReviews, "get success");
    }

    @PostMapping("{houseId}/review")
    @ApiOperation(value = "house review" ,  notes="house review")
    public CommonReturnType HouseReview(HttpServletRequest request,
            @PathVariable("houseId") Integer houseId,
            @ApiParam @RequestParam(value = "review", defaultValue = "") String review) throws BusinessException{

        Integer clientId = SecurityUtils.getUserIdFromToken(request, "client");
        if (clientId == null) {
            throw new BusinessException(EmBusinessError.INVALID_JWT_TOKEN);
        }
        if (StringUtils.isBlank(review)) {
            throw new BusinessException(EmBusinessError.PARAMETER_VALIDATION_ERROR);
        }
        House house = houseService.getHouseById(houseId);
        if (house == null) {
            throw new BusinessException(EmBusinessError.PARAMETER_VALIDATION_ERROR);
        }
        houseService.createHouseReview(clientId, house.getHouseId(), houseId, review);
        return CommonReturnType.create("Create successful");
    }

}

