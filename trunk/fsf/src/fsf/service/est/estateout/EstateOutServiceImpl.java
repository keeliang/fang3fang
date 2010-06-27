package fsf.service.est.estateout;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import chance.base.service.BaseService;
import chance.exception.ServiceException;
import fsf.beans.est.estateout.EstateOut;
import fsf.beans.est.recommond.Recommond;
import fsf.beans.sys.user.User;
import fsf.dao.est.estateout.EstateOutDao;
import fsf.dao.est.recommond.RecommondDao;
import fsf.dao.sys.user.UserDao;
import fsf.service.sys.user.UserExceptionCode;
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
	@Resource
	private UserDao userDao;
	
	/**
	 * 保存几时的发布信息并注册
	 */
	public void doReleaseSave(EstateOut eo,User contactUser){
		User u = userDao.getByProerty("userCode", contactUser.getUserCode());
		if(u!=null){
			ServiceException se = new ServiceException();
			se.setExceptionCode(UserExceptionCode.USER_NOT_EXISTS);
			se.setParameters(new String[]{contactUser.getUserCode()});
		}
		userDao.persist(contactUser);
		if(eo.getTradeType()==1){
			eo.setContactUserId(contactUser.getUserId());
		}else{
			eo.setContactUserId(null);
		}
		eo.setCreateUserId(contactUser.getUserId());
		eo.setUpdateUserId(contactUser.getUserId());
		getEstateOutDao().persist(eo);
	}
	
	
	
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
