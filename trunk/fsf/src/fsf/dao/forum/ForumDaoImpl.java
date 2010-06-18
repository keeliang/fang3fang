package fsf.dao.forum;

import java.io.Serializable;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import fsf.beans.forum.ForumUser;
import fsf.beans.sys.user.User;

@Repository
public class ForumDaoImpl extends HibernateDaoSupport implements ForumDao {

	@Resource(name = "sessionFactory")
	public void setSF(SessionFactory sessionFactory) {
		setSessionFactory(sessionFactory);
	}
	
	/**
	 * check user in table forum_users
	 * @param userName
	 * @return true:if exists false:no exists
	 * @throws RuntimeException
	 */
	public boolean checkForumUser(String userName) throws RuntimeException {
		boolean flag = false;
		String hql = "select count(*) from ForumUser where username=:userName";
		Query query = getSession().createQuery(hql);
		query.setParameter("userName", userName);
		Long result = (Long)query.uniqueResult();
		if(result>0)flag = true;
		return flag;
	}
	
	public int save(Serializable entity) throws RuntimeException{
		Integer userId = (Integer)getHibernateTemplate().save(entity);
		return userId.intValue();
	}
}
