package fsf.service.sys.province;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import fsf.beans.sys.province.Province;
import fsf.dao.sys.province.ProvinceDao;
import chance.base.service.BaseService;
@Service
public class ProvinceServiceImpl extends BaseService<Province> implements ProvinceService {
	@Resource
	public void setProvinceDao(ProvinceDao provinceDao){
		dao = provinceDao;
	}
}
