package xyz.nuze.services.ServiceImp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.parameters.P;
import org.springframework.stereotype.Service;
import xyz.nuze.error.BusinessException;
import xyz.nuze.error.EmBusinessError;
import xyz.nuze.mapper.HostMapper;
import xyz.nuze.model.Host;
import xyz.nuze.model.HostExample;

import java.util.List;

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
        HostExample hostExample = new HostExample();
        HostExample.Criteria criteria = hostExample.createCriteria();
        criteria.andUserIdEqualTo(id);
        List<Host> host = hostMapper.selectByExample(hostExample);
        if (host.size() != 1) {
            return null;
        }

        return host.get(0);
    }

    @Override
    public void insertHost(Integer loginId) throws BusinessException {
         Host host = new Host();
         host.setHostId(loginId);
         host.setUserId(loginId);
         int result = hostMapper.insertSelective(host);
         if (result != 1) {
             throw new BusinessException(EmBusinessError.UNKNOWN_ERROR);
         }
    }

    @Override
    public void updateHost(Host host) throws BusinessException {
        int result = hostMapper.updateByPrimaryKeySelective(host);
        if (result != 1) {
            throw new BusinessException(EmBusinessError.UNKNOWN_ERROR);
        }
    }
}
