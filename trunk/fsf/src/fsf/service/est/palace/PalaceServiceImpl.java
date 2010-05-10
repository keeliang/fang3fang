package fsf.service.est.palace;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import fsf.beans.est.palace.Palace;
import fsf.dao.est.palace.PalaceDao;
import chance.base.service.BaseService;
@Service
public class PalaceServiceImpl extends BaseService<Palace> implements PalaceService {
	@Resource
	public void setPalaceDao(PalaceDao palaceDao){
		dao = palaceDao;
	}
}
