package fsf.dao.sys.dict;

import org.springframework.stereotype.Repository;

import chance.base.dao.BaseDao;
import fsf.beans.sys.dict.DictGroup;

@Repository
public class DictGroupDaoImpl extends BaseDao<DictGroup> implements DictGroupDao {

	public DictGroupDaoImpl() {
		super(DictGroup.class);
	}
}
