package fsf.dao.est.recommond;

import org.springframework.stereotype.Repository;

import chance.base.dao.BaseDao;
import fsf.beans.est.recommond.Recommond;

@Repository
public class RecommondDaoImpl extends BaseDao<Recommond> implements RecommondDao{
	public RecommondDaoImpl() {
		super(Recommond.class);
	}
}
