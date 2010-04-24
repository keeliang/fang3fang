package fsf.dao.sys.district;

import org.springframework.stereotype.Repository;

import fsf.beans.sys.district.District;
import chance.base.dao.BaseDao;

@Repository
public class DistrictDaoImpl extends BaseDao<District> implements DistrictDao{
	public DistrictDaoImpl() {
		super(District.class);
	}
}
