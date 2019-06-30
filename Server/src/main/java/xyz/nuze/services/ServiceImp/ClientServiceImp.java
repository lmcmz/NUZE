package xyz.nuze.services.ServiceImp;

import org.springframework.beans.factory.annotation.Autowired;
import xyz.nuze.error.BusinessException;
import xyz.nuze.mapper.ClientMapper;
import xyz.nuze.model.Client;
import xyz.nuze.services.ClientService;

/**
 * @CreatyBy Michael
 * @Date 2019-06-30 16:22
 */
public class ClientServiceImp implements ClientService {

    @Autowired
    ClientMapper clientMapper;

    @Override
    public Client getClientByLoginId(Integer id) throws BusinessException {
        Client client = clientMapper.selectByPrimaryKey(id);

        return client;
    }
}
