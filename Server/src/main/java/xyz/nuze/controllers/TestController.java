package xyz.nuze.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import xyz.nuze.error.BusinessException;
import xyz.nuze.error.EmBusinessError;
import xyz.nuze.mapper.ClientMapper;
import xyz.nuze.model.Client;
import xyz.nuze.model.ClientExample;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @CreatyBy Michael
 * @Date 2019-06-25 16:41
 */

@RestController
@RequestMapping(value = "/test")
public class TestController extends BaseController {

    @Autowired
    ClientMapper clientMapper;
//    @GetMapping("")
//    public Object test(HttpServletRequest request) throws  Exception {
//        ClientExample clientExample = new ClientExample();
//        ClientExample.Criteria criteria = clientExample.createCriteria();
//
//        List<Client> clientList = clientMapper.selectByExample(clientExample);
//        return clientList.subList(0,5);
//    }

    @GetMapping("")
    public String test(HttpServletRequest request) throws BusinessException {
//        throw new BusinessException(EmBusinessError.SMS_ERROR);
        return "success";
    }

}
