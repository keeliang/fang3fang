package fsf.service.example;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import chance.base.service.BaseService;
import fsf.beans.example.SystemUser;
import fsf.dao.example.UserDao;

@Service
public class UserServiceImpl extends BaseService<SystemUser> implements UserService {
	@Resource
	public void setUserDao(UserDao userDao){
		this.dao = userDao;
	}

}
