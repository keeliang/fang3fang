package fsf.dao.info.information;

import org.springframework.stereotype.Repository;

import fsf.beans.info.information.Information;
import chance.base.dao.BaseDao;

@Repository
public class InformationDaoImpl extends BaseDao<Information> implements InformationDao{
	public InformationDaoImpl() {
		super(Information.class);
	}
}
