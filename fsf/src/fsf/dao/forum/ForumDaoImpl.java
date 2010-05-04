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
	
	public boolean checkForumUser(String userCode) throws RuntimeException {
		boolean flag = false;
		String hql = "select count(*) from ForumUser where sysUserCode=:userCode";
		Query query = getSession().createQuery(hql);
		query.setParameter("userCode", userCode);
		Long result = (Long)query.uniqueResult();
		if(result>0)flag = true;
		return flag;
	}
	
	public void save(Serializable entity) throws RuntimeException{
		getHibernateTemplate().save(entity);
	}
}
