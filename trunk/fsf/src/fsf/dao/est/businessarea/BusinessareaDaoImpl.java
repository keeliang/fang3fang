package fsf.dao.est.businessarea;

import org.springframework.stereotype.Repository;

import fsf.beans.est.businessarea.Businessarea;
import chance.base.dao.BaseDao;

@Repository
public class BusinessareaDaoImpl extends BaseDao<Businessarea> implements BusinessareaDao{
	public BusinessareaDaoImpl() {
		super(Businessarea.class);
	}
}
