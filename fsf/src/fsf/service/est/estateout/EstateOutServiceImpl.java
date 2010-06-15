package fsf.service.est.estateout;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import chance.base.service.BaseService;
import fsf.beans.est.estateout.EstateOut;
import fsf.beans.est.recommond.Recommond;
import fsf.dao.est.estateout.EstateOutDao;
import fsf.dao.est.recommond.RecommondDao;
import fsf.web.common.ThreadUser;
@Service
public class EstateOutServiceImpl extends BaseService<EstateOut> implements EstateOutService {
	@Resource
	public void setEstateOutDao(EstateOutDao estateOutDao){
		dao = estateOutDao;
	}
	
	public EstateOutDao getEstateOutDao(){
		return (EstateOutDao)dao;
	}
	
	@Resource
	private RecommondDao recommondDao;
	
	public void doExpertRecommond(Short recommond ,String[] arrayEtateId){
		Recommond r ;
		Date now = new Date();
		for(int i = 0 ; i < arrayEtateId.length;i++){
			r = new Recommond();
			r.setUserId(ThreadUser.get().getUserId());
			r.setEstateId(Integer.parseInt(arrayEtateId[i]));
			recommondDao.delete(r);
			if(recommond==1){
				r.setCreateTime(now);
				recommondDao.persist(r);	
			}
		}
	}
}
