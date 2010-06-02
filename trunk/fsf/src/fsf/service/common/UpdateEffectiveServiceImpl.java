package fsf.service.common;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import fsf.dao.est.estatein.EstateInDao;
import fsf.dao.est.estateout.EstateOutDao;
import fsf.dao.est.newestate.NewEstateDao;

@Service("updateEffectiveService")
public class UpdateEffectiveServiceImpl implements ScheduleService{

	@Resource
	private EstateOutDao estateOutDao;
	
	@Resource
	private EstateInDao estateInDao;
	
	@Resource
	private NewEstateDao newEstateDao;
	
	public void destroy() {
		
	}

	public void init() {
		refresh();
	}

	public void refresh() {
		estateOutDao.updateEffective();
		estateInDao.updateEffective();
		newEstateDao.updateEffective();
	}
}
