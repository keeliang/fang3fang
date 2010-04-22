package fsf.dao.info.newtype;

import org.springframework.stereotype.Repository;

import fsf.beans.info.newtype.NewType;
import chance.base.dao.BaseDao;

@Repository
public class NewTypeDaoImpl extends BaseDao<NewType> implements NewTypeDao{
	public NewTypeDaoImpl() {
		super(NewType.class);
	}
}
