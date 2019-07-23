package xyz.nuze.controllers;

import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import xyz.nuze.error.BusinessException;
import xyz.nuze.error.EmBusinessError;
import xyz.nuze.model.Client;
import xyz.nuze.model.Host;
import xyz.nuze.model.User;
import xyz.nuze.requestObject.UserInfoRO;
import xyz.nuze.response.CommonReturnType;
import xyz.nuze.services.ClientService;
import xyz.nuze.services.HostService;
import xyz.nuze.services.UserService;
import xyz.nuze.utils.JWT.SecurityUtils;
import xyz.nuze.utils.JWT.SimpleAwsS3Service;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**
 * @CreatyBy Michael
 * @Date 2019-07-02 13:56
 */


@RestController
@CrossOrigin
@RequestMapping(value = "/users")
public class UserController extends BaseController {

    @Autowired
    UserService userService;

    @Autowired
    HostService hostService;

    @Autowired
    ClientService clientService;

    @Autowired
    SimpleAwsS3Service simpleAwsS3Service;

    @ApiOperation(value = "User register" ,  notes="User register")
    @PostMapping("")
    @Transactional(rollbackFor = BusinessException.class)
    public CommonReturnType register(@RequestBody
                                         @ApiParam(value = "{ <br/>" +
                                                 "&nbsp&nbsp&nbsp&nbsp\"username\": 123,<br/>" +
                                                 "&nbsp&nbsp&nbsp&nbsp\"password\": 123456, <br/>" +
                                                 "&nbsp&nbsp&nbsp&nbsp\"type\": 0, <br/>" +
                                                 "}")
                                                 Map<String, String> body) throws BusinessException {
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


    @ApiOperation(value = "User register" ,  notes="User register")
    @GetMapping("")
    public CommonReturnType getUserInfo(HttpServletRequest request) throws BusinessException {
        Integer clientId = SecurityUtils.getUserIdFromToken(request, "client");
        Integer hostId = SecurityUtils.getUserIdFromToken(request, "host");
        if (clientId == null && hostId == null) {
            throw new BusinessException(EmBusinessError.INVALID_JWT_TOKEN);
        }
        if (clientId != null) {
            Client client = clientService.getClientByLoginId(clientId);
            return CommonReturnType.create(client, "Get client info successful");
        }
        Host host = hostService.getHostByLoginId(hostId);
        return CommonReturnType.create(host, "Get client info successful");
    }


    @ApiOperation(value = "User password update" ,  notes="User password update")
    @PostMapping("/password")
    public CommonReturnType updateUserPass(HttpServletRequest request,
            @RequestBody
            @ApiParam(value = "{ <br/>" +
                    "&nbsp&nbsp&nbsp&nbsp\"password\": 123456, <br/>" +
                    "}")
                    Map<String, String> body) throws BusinessException {
        Integer clientId = SecurityUtils.getUserIdFromToken(request, "client");
        Integer hostId = SecurityUtils.getUserIdFromToken(request, "host");
        if (clientId == null && hostId == null) {
            throw new BusinessException(EmBusinessError.INVALID_JWT_TOKEN);
        }
        Integer userId;
        if (clientId != null) {
            userId = clientId;
        } else {
            userId = hostId;
        }
        User user = new User();
        user.setUserId(userId);
        String password = body.get("password");
        user.setPassword(password);
        userService.updateUserPassword(user);
        return CommonReturnType.create("Update successfully");
    }

    @ApiOperation(value = "User info update" ,  notes="User info update")
    @PostMapping("/info")
    public CommonReturnType updateUserInfo(HttpServletRequest request,
                                           @ModelAttribute UserInfoRO userInfoRO) throws BusinessException {
        Integer clientId = SecurityUtils.getUserIdFromToken(request, "client");
        Integer hostId = SecurityUtils.getUserIdFromToken(request, "host");
        if (clientId == null && hostId == null) {
            throw new BusinessException(EmBusinessError.INVALID_JWT_TOKEN);
        }
        Integer userId;
        if (clientId != null) {
            String path = "comp9900/public/client/" + clientId + "/";
            simpleAwsS3Service.uploadFileToS3Bucket(userInfoRO.getPicture(), true, path);
            String fullPath = "https://michael-ecommerce.s3-ap-southeast-2.amazonaws.com/" + path + userInfoRO.getPicture().getOriginalFilename();
            Client client = new Client();
            client.setUserId(clientId);
            client.setClientName(userInfoRO.getName());
            client.setDetails(userInfoRO.getDetails());
            client.setSelfIntro(userInfoRO.getSelfInfo());
            client.setPicUrl(fullPath);
            clientService.updateClint(client);
        } else {
            String path = "comp9900/public/host/" + hostId + "/";
            simpleAwsS3Service.uploadFileToS3Bucket(userInfoRO.getPicture(), true, path);
            String fullPath = "https://michael-ecommerce.s3-ap-southeast-2.amazonaws.com/" + path + userInfoRO.getPicture().getOriginalFilename();
            Host host = new Host();
            host.setUserId(hostId);
            host.setName(userInfoRO.getName());
            host.setDetails(userInfoRO.getDetails());
            host.setSelfIntro(userInfoRO.getSelfInfo());
            host.setPicUrl(fullPath);
            hostService.updateHost(host);
        }
        return CommonReturnType.create("Update successfully");
    }
}
