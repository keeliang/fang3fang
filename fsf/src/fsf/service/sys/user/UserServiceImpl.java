package fsf.service.sys.user;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import chance.base.service.BaseService;
import chance.exception.ServiceException;
import fsf.beans.est.estateout.EstateOut;
import fsf.beans.sys.user.User;
import fsf.dao.sys.user.UserDao;
@Service
public class UserServiceImpl extends BaseService<User> implements UserService {
	
	public User login(String userCode,String password){
		User user = dao.getByProerties(new String[]{"userCode","status"}, new Object[]{userCode,(short)1});
		if(user==null){
			ServiceException se = new ServiceException();
			se.setExceptionCode(UserExceptionCode.USER_NOT_EXISTS);
			se.setParameters(new String[]{userCode});
			throw se;
		}
		if(!user.getPassword().equals(password)){
			ServiceException se = new ServiceException();
			se.setExceptionCode(UserExceptionCode.USER_PASSWORD_ERROR);
			se.setParameters(new String[]{userCode});
			throw se;
		}
		if(!(0==user.getUserType()||1==user.getUserType())){
			ServiceException se = new ServiceException();
			se.setExceptionCode(UserExceptionCode.USER_NO_PRIVILEGE_ADMIN);
			se.setParameters(new String[]{userCode});
			throw se;
		}
		return user;
	}
	
	@Override
	public void persist(User entity) {
		if(dao.getByProerty("userCode", entity.getUserCode())!=null){
			ServiceException se = new ServiceException();
			se.setExceptionCode(UserExceptionCode.USER_CODE_DUPLICATE);
			se.setParameters(new String[]{entity.getUserCode()});
			throw se;
		}
		super.persist(entity);
	}
	
	@Resource
	public void setUserDao(UserDao userDao){
		dao = userDao;
	}
	
	public UserDao getUserDao(){
		return (UserDao)dao;
	}

	@Transactional(readOnly=true,propagation=Propagation.NOT_SUPPORTED)
	public List<EstateOut> queryRecommondIndex(Integer userId) {
		return getUserDao().queryRecommondIndex(userId);
	}
	
	@Transactional(readOnly=true,propagation=Propagation.NOT_SUPPORTED)
	public List<EstateOut> queryRecommond(Integer userId, Integer tradeMode) {
		return getUserDao().queryRecommond(userId, tradeMode);
	}

}
