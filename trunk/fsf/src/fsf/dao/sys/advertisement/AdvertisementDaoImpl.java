package fsf.dao.sys.advertisement;

import org.springframework.stereotype.Repository;

import fsf.beans.sys.advertisement.Advertisement;
import chance.base.dao.BaseDao;

@Repository
public class AdvertisementDaoImpl extends BaseDao<Advertisement> implements AdvertisementDao{
	public AdvertisementDaoImpl() {
		super(Advertisement.class);
	}
}
