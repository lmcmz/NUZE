package xyz.nuze.controllers;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import xyz.nuze.error.BusinessException;
import xyz.nuze.error.EmBusinessError;
import xyz.nuze.model.Host;
import xyz.nuze.model.User;
import xyz.nuze.response.CommonReturnType;
import xyz.nuze.services.ClientService;
import xyz.nuze.services.HostService;
import xyz.nuze.services.UserService;

import java.util.Map;

/**
 * @CreatyBy Michael
 * @Date 2019-07-02 13:56
 */


@RestController
@RequestMapping(value = "/users")
public class UserController extends BaseController {

    @Autowired
    UserService userService;

    @Autowired
    HostService hostService;

    @Autowired
    ClientService clientService;


    @PostMapping("")
    public CommonReturnType register(@RequestBody Map<String, String> body) throws BusinessException {
        String username = body.get("username");
        String password = body.get("password");
        String type = body.get("type");


        if(type == null) {
            throw new BusinessException(EmBusinessError.PARAMETER_VALIDATION_ERROR);
        }

        Integer userGroup = Integer.parseInt(type);

        if (StringUtils.isBlank(password) || StringUtils.isBlank(username)) {
            throw new BusinessException(EmBusinessError.PARAMETER_VALIDATION_ERROR);
        }

        if (userGroup != 0 && userGroup != 1) {
            throw new BusinessException(EmBusinessError.PARAMETER_VALIDATION_ERROR);
        }

        User user = userService.getUserByUsername(username);
        if (user != null) {
            Integer currUserId = user.getUserId();
            if (
                    1 == userGroup && hostService.getHostByLoginId(currUserId) != null ||
                            0 == userGroup && clientService.getClientByLoginId(currUserId) != null
            ) {
                throw new BusinessException(EmBusinessError.USERNAME_HAS_BEEN_REGISTED);
            }
        }

        Integer userId;
        // create User model
        if (user == null) {
            User newUser = new User();
            newUser.setPassword(password);
            newUser.setUserName(username);
            userId = userService.userRegister(newUser);
        } else {
            userId = user.getUserId();
        }

        System.out.println(userId);

        // register
        if (1 == userGroup) {
            hostService.insertHost(userId);
        } else {
            clientService.insertClient(userId);
        }

        return CommonReturnType.create("create success");
    }
}
