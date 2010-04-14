package fsf.dao.example;

import org.springframework.stereotype.Repository;

import chance.base.dao.BaseDao;
import fsf.beans.example.SystemUser;
@Repository
public class UserDaoImpl extends BaseDao<SystemUser> implements UserDao {
	
	public UserDaoImpl() {
		super(SystemUser.class);
	}
}
