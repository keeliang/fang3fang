package chance.tag.dao;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Component;
@Component
public class TagDaoImpl extends HibernateDaoSupport implements TagDao {
	
	@Resource(name = "sessionFactory")
	public void setSF(SessionFactory sessionFactory) {
		setSessionFactory(sessionFactory);
	}
	/**
	 * query the value of the type name
	 * @return
	 * @throws Exception
	 */
	public String getTypeName(String tblName, String key, String keyValue, 
			String colName) throws Exception{
		String hql = "select " + colName + " from " + tblName + " where " +
				key + "=?";
		System.out.println(hql);
		Query query = getSession().createQuery(hql);
		query.setString(0, keyValue);
		String typeName = String.valueOf(query.uniqueResult());
		return typeName;
	}
}
