package fsf.service.sys.user;

import fsf.beans.sys.user.User;
import chance.base.service.Service;

public interface UserService extends Service<User>{
	public User login(String userCode,String password);
}
