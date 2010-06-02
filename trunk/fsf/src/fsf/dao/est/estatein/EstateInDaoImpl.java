package fsf.dao.est.estatein;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import fsf.beans.est.estatein.EstateIn;
import chance.base.dao.BaseDao;

@Repository
public class EstateInDaoImpl extends BaseDao<EstateIn> implements EstateInDao{
	public EstateInDaoImpl() {
		super(EstateIn.class);
	}
	
	public void updateEffective(){
		String hql = "update EstateIn o set o.tradeMode = 0 ,o.effective = 0 where o.tradeMode <> 0 and o.effective = 1 ";
		Query query = getSession().createQuery(hql);
		query.executeUpdate();
		
		hql = "update EstateIn o set o.effective = o.effective - 1 where o.effective > 0 and o.tradeMode <> 0";
		query = getSession().createQuery(hql);
		query.executeUpdate();
	}
}
