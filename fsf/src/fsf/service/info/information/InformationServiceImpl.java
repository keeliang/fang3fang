package fsf.service.info.information;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import chance.base.service.BaseService;
import fsf.beans.info.information.Information;
import fsf.dao.info.information.InformationDao;
@Service
public class InformationServiceImpl extends BaseService<Information> implements InformationService {
	@Resource
	public void setInformationDao(InformationDao informationDao){
		dao = informationDao;
	}
}
