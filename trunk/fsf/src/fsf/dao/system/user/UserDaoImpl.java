package fsf.dao.system.user;

import chance.base.dao.BaseDao;
import fsf.beans.system.user.SystemUser;
import org.springframework.stereotype.Repository;
@Repository
public class UserDaoImpl extends BaseDao<SystemUser> implements UserDao {
	
	public UserDaoImpl() {
		super(SystemUser.class);
	}
}
