package xyz.nuze.services.ServiceImp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xyz.nuze.error.BusinessException;
import xyz.nuze.error.EmBusinessError;
import xyz.nuze.mapper.ClientMapper;
import xyz.nuze.model.Client;
import xyz.nuze.services.ClientService;

/**
 * @CreatyBy Michael
 * @Date 2019-06-30 16:22
 */

@Service
public class ClientServiceImp implements ClientService {

    @Autowired
    ClientMapper clientMapper;

    @Override
    public Client getClientByLoginId(Integer id) throws BusinessException {
        Client client = clientMapper.selectByPrimaryKey(id);

        return client;
    }

    @Override
    public void insertClient(Integer id) throws BusinessException {
        Client client = new Client();
        client.setClientId(id);
        client.setUserId(id);
        int result = clientMapper.insertSelective(client);
        if (result != 1) {
            throw new BusinessException(EmBusinessError.UNKNOWN_ERROR);
        }
    }
}
