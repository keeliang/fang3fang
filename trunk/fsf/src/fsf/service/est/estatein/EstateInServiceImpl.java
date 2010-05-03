package fsf.service.est.estatein;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import fsf.beans.est.estatein.EstateIn;
import fsf.dao.est.estatein.EstateInDao;
import chance.base.service.BaseService;
@Service
public class EstateInServiceImpl extends BaseService<EstateIn> implements EstateInService {
	@Resource
	public void setEstateInDao(EstateInDao estateInDao){
		dao = estateInDao;
	}
}
