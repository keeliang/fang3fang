package fsf.service.est.commerce;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import chance.base.service.BaseService;
import chance.exception.ServiceException;
import fsf.beans.est.commerce.Commerce;
import fsf.beans.sys.user.User;
import fsf.dao.est.commerce.CommerceDao;
import fsf.dao.sys.user.UserDao;
import fsf.service.sys.user.UserExceptionCode;
@Service
public class CommerceServiceImpl extends BaseService<Commerce> implements CommerceService {
	@Resource
	public void setCommerceDao(CommerceDao commerceDao){
		dao = commerceDao;
	}
	
	@Resource
	private UserDao userDao;
	
	/**
	 * 保存即时的发布信息并注册
	 */
	public void doReleaseSave(Commerce commerce,User contactUser){
		User u = userDao.getByProerty("userCode", contactUser.getUserCode());
		if(u!=null){
			ServiceException se = new ServiceException();
			se.setExceptionCode(UserExceptionCode.USER_NOT_EXISTS);
			se.setParameters(new String[]{contactUser.getUserCode()});
			throw se;
		}
		contactUser.setStatus((short)1);
		contactUser.setUserType((short)3);
		userDao.persist(contactUser);
		commerce.setCreateUserId(contactUser.getUserId());
		commerce.setUpdateUserId(contactUser.getUserId());
		dao.persist(commerce);
	}
}
