package fsf.service.est.businessarea;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import fsf.beans.est.businessarea.Businessarea;
import fsf.dao.est.businessarea.BusinessareaDao;
import chance.base.service.BaseService;
@Service
public class BusinessareaServiceImpl extends BaseService<Businessarea> implements BusinessareaService {
	@Resource
	public void setBusinessareaDao(BusinessareaDao businessareaDao){
		dao = businessareaDao;
	}
}
