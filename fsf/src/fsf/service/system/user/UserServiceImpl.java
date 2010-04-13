package fsf.service.system.user;

import javax.annotation.Resource;

import chance.base.service.BaseService;
import fsf.beans.system.user.SystemUser;
import fsf.dao.system.user.UserDao;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl extends BaseService<SystemUser> implements UserService {
	@Resource
	public void setUserDao(UserDao UserDao){
		this.dao = UserDao;
	}

}
