package fsf.dao.est.estatein;

import org.springframework.stereotype.Repository;

import fsf.beans.est.estatein.EstateIn;
import chance.base.dao.BaseDao;

@Repository
public class EstateInDaoImpl extends BaseDao<EstateIn> implements EstateInDao{
	public EstateInDaoImpl() {
		super(EstateIn.class);
	}
}
