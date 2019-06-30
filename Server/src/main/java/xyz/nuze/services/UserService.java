package xyz.nuze.services;

import org.apache.ibatis.annotations.Mapper;
import xyz.nuze.model.User;

/**
 * @CreatyBy Michael
 * @Date 2019-06-30 15:55
 */

@Mapper
public interface UserService {
    User getUserByAccount(String username, String password);
}
