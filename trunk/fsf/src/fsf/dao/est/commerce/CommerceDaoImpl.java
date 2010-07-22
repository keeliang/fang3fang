package fsf.dao.est.commerce;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import fsf.beans.est.commerce.Commerce;
import chance.base.dao.BaseDao;

@Repository
public class CommerceDaoImpl extends BaseDao<Commerce> implements CommerceDao{
	public CommerceDaoImpl() {
		super(Commerce.class);
	}
	
	public List<String> queryImagePath(){
		String hql = "select o.imagePath from Commerce o where o.imagePath is not null ";
		Query query = getSession().createQuery(hql);
		return query.list();
	}
}
