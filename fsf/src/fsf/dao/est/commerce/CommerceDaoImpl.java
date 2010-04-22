package fsf.dao.est.commerce;

import org.springframework.stereotype.Repository;

import fsf.beans.est.commerce.Commerce;
import chance.base.dao.BaseDao;

@Repository
public class CommerceDaoImpl extends BaseDao<Commerce> implements CommerceDao{
	public CommerceDaoImpl() {
		super(Commerce.class);
	}
}
