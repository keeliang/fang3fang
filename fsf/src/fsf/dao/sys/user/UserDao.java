package fsf.dao.sys.user;

import java.util.List;

import fsf.beans.sys.user.User;
import chance.base.dao.Dao;

public interface UserDao extends Dao<User>{
	public List<String> queryImagePath();
}
