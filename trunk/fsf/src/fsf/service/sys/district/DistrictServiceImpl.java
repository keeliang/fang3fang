package fsf.service.sys.district;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import fsf.beans.sys.district.District;
import fsf.dao.sys.district.DistrictDao;
import chance.base.service.BaseService;
@Service
public class DistrictServiceImpl extends BaseService<District> implements DistrictService {
	@Resource
	public void setDistrictDao(DistrictDao districtDao){
		dao = districtDao;
	}
}
