package fsf.service.est.estatein;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import chance.base.service.BaseService;
import chance.exception.ServiceException;
import fsf.beans.est.estatein.EstateIn;
import fsf.beans.sys.user.User;
import fsf.dao.est.estatein.EstateInDao;
import fsf.dao.sys.user.UserDao;
import fsf.service.sys.user.UserExceptionCode;
@Service
public class EstateInServiceImpl extends BaseService<EstateIn> implements EstateInService {
	@Resource
	public void setEstateInDao(EstateInDao estateInDao){
		dao = estateInDao;
	}
	
	@Resource
	private UserDao userDao;
	/**
	 * 保存发布
	 */
	public void doReleaseSave(EstateIn ei,User contactUser){
		User u = userDao.getByProerty("userCode", contactUser.getUserCode());
		if(u!=null){
			ServiceException se = new ServiceException();
			se.setExceptionCode(UserExceptionCode.USER_NOT_EXISTS);
			se.setParameters(new String[]{contactUser.getUserCode()});
		}
		userDao.persist(contactUser);
		if(ei.getTradeType()==1){
			ei.setContactUserId(contactUser.getUserId());
		}else{
			ei.setContactUserId(null);
		}
		ei.setCreateUserId(contactUser.getUserId());
		ei.setUpdateUserId(contactUser.getUserId());
		getEstateInDao().persist(ei);
	}
	
	public EstateInDao getEstateInDao(){
		return (EstateInDao)dao;
	}
}
