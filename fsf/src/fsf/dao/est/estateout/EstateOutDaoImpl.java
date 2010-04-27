package fsf.dao.est.estateout;

import org.springframework.stereotype.Repository;

import fsf.beans.est.estateout.EstateOut;
import chance.base.dao.BaseDao;

@Repository
public class EstateOutDaoImpl extends BaseDao<EstateOut> implements EstateOutDao{
	public EstateOutDaoImpl() {
		super(EstateOut.class);
	}
}
