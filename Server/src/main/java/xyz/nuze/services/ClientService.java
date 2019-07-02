package xyz.nuze.services;

import org.apache.ibatis.annotations.Mapper;
import xyz.nuze.error.BusinessException;
import xyz.nuze.model.Client;

/**
 * @CreatyBy Michael
 * @Date 2019-06-30 16:21
 */

@Mapper
public interface ClientService {
    Client getClientByLoginId(Integer id) throws BusinessException;
    void insertClient(Integer id) throws BusinessException;
}
