package fsf.dao.sys.user;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import fsf.beans.sys.user.User;
import chance.base.dao.BaseDao;

@Repository
public class UserDaoImpl extends BaseDao<User> implements UserDao{
	public UserDaoImpl() {
		super(User.class);
	}
	
	public List<String> queryImagePath(){
		String hql = "select o.imagePath from User o where o.imagePath is not null ";
		Query query = getSession().createQuery(hql);
		return query.list();
	}
}
