package xyz.nuze.services.ServiceImp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xyz.nuze.error.BusinessException;
import xyz.nuze.mapper.HostMapper;
import xyz.nuze.model.Host;

/**
 * @CreatyBy Michael
 * @Date 2019-06-30 16:18
 */

@Service
public class HostServiceImp implements xyz.nuze.services.HostService {

    @Autowired
    HostMapper hostMapper;

    @Override
    public Host getHostByLoginId(Integer id) throws BusinessException {
        Host host = hostMapper.selectByPrimaryKey(id);

        return host;
    }
}
