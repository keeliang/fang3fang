package fsf.dao.est.newestate;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import fsf.beans.est.newestate.NewEstate;
import chance.base.dao.BaseDao;

@Repository
public class NewEstateDaoImpl extends BaseDao<NewEstate> implements NewEstateDao{
	public NewEstateDaoImpl() {
		super(NewEstate.class);
	}
	
	public void updateEffective(){
		String hql = "update NewEstate o set o.status = 0 ,o.effective = 0 where o.status <> 0 and o.effective = 1 ";
		Query query = getSession().createQuery(hql);
		query.executeUpdate();
		
		hql = "update NewEstate o set o.effective = o.effective - 1 where o.effective > 0 and o.status <> 0";
		query = getSession().createQuery(hql);
		query.executeUpdate();
	}
	
	public List<String> queryImagePath(){
		String hql = "select o.imagePath from NewEstate o where o.imagePath is not null ";
		Query query = getSession().createQuery(hql);
		return query.list();
	}
}
