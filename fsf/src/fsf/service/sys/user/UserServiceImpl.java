package fsf.service.sys.user;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import fsf.beans.sys.user.User;
import fsf.dao.sys.user.UserDao;
import chance.base.service.BaseService;
@Service
public class UserServiceImpl extends BaseService<User> implements UserService {
	@Resource
	public void setUserDao(UserDao userDao){
		dao = userDao;
	}
	
	public UserDao getUserDao(){
		return (UserDao)dao;
	}
}
