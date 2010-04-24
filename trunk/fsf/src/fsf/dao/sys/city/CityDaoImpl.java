package fsf.dao.sys.city;

import org.springframework.stereotype.Repository;

import fsf.beans.sys.city.City;
import chance.base.dao.BaseDao;

@Repository
public class CityDaoImpl extends BaseDao<City> implements CityDao{
	public CityDaoImpl() {
		super(City.class);
	}
}
