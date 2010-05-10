package fsf.dao.est.palace;

import org.springframework.stereotype.Repository;

import fsf.beans.est.palace.Palace;
import chance.base.dao.BaseDao;

@Repository
public class PalaceDaoImpl extends BaseDao<Palace> implements PalaceDao{
	public PalaceDaoImpl() {
		super(Palace.class);
	}
}
