package xyz.nuze.services.ServiceImp;

import org.springframework.beans.factory.annotation.Autowired;
import xyz.nuze.mapper.UserMapper;
import xyz.nuze.model.User;
import xyz.nuze.model.UserExample;
import xyz.nuze.services.UserService;

/**
 * @CreatyBy Michael
 * @Date 2019-06-30 15:55
 */
public class UserServiceImp implements UserService {

    @Autowired
    UserMapper userMapper;

    @Override
    public User getUserByAccount(String username, String password) {
        UserExample userExample = new UserExample();
        UserExample.Criteria criteria = userExample.createCriteria();
        criteria.andU
        return null;
    }
}
