package fsf.service.sys.advertisement;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import fsf.beans.sys.advertisement.Advertisement;
import fsf.dao.sys.advertisement.AdvertisementDao;
import chance.base.service.BaseService;
@Service
public class AdvertisementServiceImpl extends BaseService<Advertisement> implements AdvertisementService {
	@Resource
	public void setAdvertisementDao(AdvertisementDao advertisementDao){
		dao = advertisementDao;
	}
	
	public AdvertisementDao getAdvertisementDao(){
		return (AdvertisementDao)dao;
	}
}
