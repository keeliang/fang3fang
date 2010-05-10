package fsf.service.est.newestate;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import fsf.beans.est.newestate.NewEstate;
import fsf.dao.est.newestate.NewEstateDao;
import chance.base.service.BaseService;
@Service
public class NewEstateServiceImpl extends BaseService<NewEstate> implements NewEstateService {
	@Resource
	public void setNewEstateDao(NewEstateDao newEstateDao){
		dao = newEstateDao;
	}
}
