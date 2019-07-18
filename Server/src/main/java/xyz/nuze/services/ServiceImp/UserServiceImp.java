package xyz.nuze.services.ServiceImp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xyz.nuze.error.BusinessException;
import xyz.nuze.error.EmBusinessError;
import xyz.nuze.mapper.UserMapper;
import xyz.nuze.model.User;
import xyz.nuze.model.UserExample;
import xyz.nuze.services.UserService;

import java.util.List;

/**
 * @CreatyBy Michael
 * @Date 2019-06-30 15:55
 */

@Service
public class UserServiceImp implements UserService {

    @Autowired
    UserMapper userMapper;

    @Override
    public User getUserByAccount(String username, String password) throws BusinessException {
        UserExample userExample = new UserExample();
        UserExample.Criteria criteria = userExample.createCriteria();
        criteria.andUserNameEqualTo(username);
        criteria.andPasswordEqualTo(password);

        List<User> result = userMapper.selectByExample(userExample);
        if (result.size() != 1) {
            throw new BusinessException(EmBusinessError.PARAMETER_VALIDATION_ERROR);
        }
        return result.get(0);
    }

    @Override
    public User getUserByUsername(String username) throws BusinessException {
        UserExample userExample = new UserExample();
        UserExample.Criteria criteria = userExample.createCriteria();
        criteria.andUserNameEqualTo(username);

        List<User> result = userMapper.selectByExample(userExample);
        if (result.size() != 1) {
            return null;
        }
        return result.get(0);
    }

    @Override
    public Integer userRegister(User user) throws BusinessException {

        userMapper.insertSelective(user);

        return user.getUserId();
    }

    @Override
    public void updateUserPassword(User user) throws BusinessException {
        int result = userMapper.updateByPrimaryKey(user);
        if (result != 0) {
            throw new BusinessException(EmBusinessError.PARAMETER_VALIDATION_ERROR);
        }
    }
}
