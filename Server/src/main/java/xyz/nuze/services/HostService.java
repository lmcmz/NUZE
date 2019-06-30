package xyz.nuze.services;

import org.apache.ibatis.annotations.Mapper;
import xyz.nuze.error.BusinessException;
import xyz.nuze.model.Host;

/**
 * @CreatyBy Michael
 * @Date 2019-06-30 16:18
 */

@Mapper
public interface HostService {
    Host getHostByLoginId(Integer id) throws BusinessException;
}
