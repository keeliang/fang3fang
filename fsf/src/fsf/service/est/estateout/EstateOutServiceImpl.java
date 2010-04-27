package fsf.service.est.estateout;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import fsf.beans.est.estateout.EstateOut;
import fsf.dao.est.estateout.EstateOutDao;
import chance.base.service.BaseService;
@Service
public class EstateOutServiceImpl extends BaseService<EstateOut> implements EstateOutService {
	@Resource
	public void setEstateOutDao(EstateOutDao estateOutDao){
		dao = estateOutDao;
	}
}
