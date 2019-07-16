package xyz.nuze.controllers;

import io.swagger.annotations.ApiParam;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import xyz.nuze.error.BusinessException;
import xyz.nuze.response.CommonReturnType;

import javax.servlet.http.HttpServletRequest;

/**
 * @CreatyBy Michael
 * @Date 2019-07-16 22:02
 */

@RestController
@RequestMapping(value = "/house")
public class HouseController extends BaseController {

    @GetMapping
    public CommonReturnType getHouseInfo(HttpServletRequest request,
         @ApiParam @RequestParam(value = "offset", defaultValue = "0") Integer offset,
         @ApiParam @RequestParam(value = "limit", defaultValue = "10") Integer limit) throws BusinessException {


        return null;
    }

}

