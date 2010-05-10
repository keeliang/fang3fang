package fsf.dao.est.newestate;

import org.springframework.stereotype.Repository;

import fsf.beans.est.newestate.NewEstate;
import chance.base.dao.BaseDao;

@Repository
public class NewEstateDaoImpl extends BaseDao<NewEstate> implements NewEstateDao{
	public NewEstateDaoImpl() {
		super(NewEstate.class);
	}
}
