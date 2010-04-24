package fsf.service.sys.city;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import fsf.beans.sys.city.City;
import fsf.dao.sys.city.CityDao;
import chance.base.service.BaseService;
@Service
public class CityServiceImpl extends BaseService<City> implements CityService {
	@Resource
	public void setCityDao(CityDao cityDao){
		dao = cityDao;
	}
}
