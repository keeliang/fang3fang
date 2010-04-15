package fsf.dao.sys.user;

import org.springframework.stereotype.Repository;

import fsf.beans.sys.user.User;
import chance.base.dao.BaseDao;

@Repository
public class UserDaoImpl extends BaseDao<User> implements UserDao{
	public UserDaoImpl() {
		super(User.class);
	}
}
