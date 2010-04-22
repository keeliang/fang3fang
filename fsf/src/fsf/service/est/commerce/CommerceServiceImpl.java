package fsf.service.est.commerce;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import fsf.beans.est.commerce.Commerce;
import fsf.dao.est.commerce.CommerceDao;
import chance.base.service.BaseService;
@Service
public class CommerceServiceImpl extends BaseService<Commerce> implements CommerceService {
	@Resource
	public void setCommerceDao(CommerceDao commerceDao){
		dao = commerceDao;
	}
}
