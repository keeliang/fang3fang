package fsf.dao.est.estateout;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import chance.base.dao.BaseDao;
import fsf.beans.est.estateout.EstateOut;

@Repository
public class EstateOutDaoImpl extends BaseDao<EstateOut> implements EstateOutDao{
	public EstateOutDaoImpl() {
		super(EstateOut.class);
	}
	
	public void updateEffective(){
		String hql = "update EstateOut o set o.tradeMode = 0 ,o.effective = 0 where o.tradeMode <> 0 and o.effective = 1 ";
		Query query = getSession().createQuery(hql);
		query.executeUpdate();
		
		hql = "update EstateOut o set o.effective = o.effective - 1 where o.effective > 0 and o.tradeMode <> 0";
		query = getSession().createQuery(hql);
		query.executeUpdate();
	}
	
	public List<String> queryImagePath(){
		String hql = "select o.imagePath from EstateOut o where o.imagePath is not null ";
		Query query = getSession().createQuery(hql);
		return query.list();
	}
}
