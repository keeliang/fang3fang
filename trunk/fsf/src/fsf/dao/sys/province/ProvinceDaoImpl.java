package fsf.dao.sys.province;

import org.springframework.stereotype.Repository;

import fsf.beans.sys.province.Province;
import chance.base.dao.BaseDao;

@Repository
public class ProvinceDaoImpl extends BaseDao<Province> implements ProvinceDao{
	public ProvinceDaoImpl() {
		super(Province.class);
	}
}
