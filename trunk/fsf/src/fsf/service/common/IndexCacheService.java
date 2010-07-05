package fsf.service.common;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import chance.base.BaseParameter;
import fsf.action.est.commerce.CommerceParameter;
import fsf.action.est.estateout.EstateOutParameter;
import fsf.action.info.information.InformationParameter;
import fsf.dao.est.commerce.CommerceDao;
import fsf.dao.est.estateout.EstateOutDao;
import fsf.dao.info.information.InformationDao;
import fsf.web.common.ConstantCache;
@Service
public class IndexCacheService implements ScheduleService{

	@Resource
	private EstateOutDao estateOutDao;
	
	@Resource
	private InformationDao informationDao;
	
	@Resource
	private CommerceDao commerceDao;

	public void refresh() throws Exception {
		//首页4条最新房源
		EstateOutParameter estateOutParameter = new EstateOutParameter();
		estateOutParameter.setMaxResults(-1);
		estateOutParameter.setCurrentPage(-1);
		estateOutParameter.setTopCount(4);
		estateOutParameter.set_nin_tradeMode(new Short[]{1,2,3});
		estateOutParameter.set_snull_imagePath(false);
		estateOutParameter.set_ne_examine((short)1);
		ConstantCache.LISTNEWESTATE = estateOutDao.doPaginationQuery(estateOutParameter).getResultList();
		//首页8条最新招商
		CommerceParameter commerceParameter = new CommerceParameter();
		commerceParameter.set_ne_status((short)1);
		commerceParameter.setMaxResults(-1);
		commerceParameter.setCurrentPage(-1);
		commerceParameter.setTopCount(8);
		commerceParameter.getSortedConditions().put("createTime", BaseParameter.SORTED_DESC);
		ConstantCache.LISTCOMMERCE = commerceDao.doPaginationQuery(commerceParameter).getResultList();
		//首页10条资讯			
		InformationParameter informationParameter = new InformationParameter();
		informationParameter.setMaxResults(-1);
		informationParameter.setCurrentPage(-1);
		informationParameter.setTopCount(10);
		informationParameter.set_ne_status((short)1);
		informationParameter.set_nne_informationType(0);
		informationParameter.getSortedConditions().put("createTime", BaseParameter.SORTED_DESC);
		ConstantCache.LISTINFO = informationDao.doPaginationQuery(informationParameter).getResultList();
		//首页4条滚动资讯
		informationParameter = new InformationParameter();
		informationParameter.setMaxResults(-1);
		informationParameter.setCurrentPage(-1);
		informationParameter.setTopCount(4);
		informationParameter.set_ne_status((short)1);
		informationParameter.set_ne_informationType(0);
		informationParameter.getSortedConditions().put("createTime", BaseParameter.SORTED_DESC);
		ConstantCache.LISTROLLINFO = informationDao.doPaginationQuery(informationParameter).getResultList();
	}
	
	public void destroy() {
		
	}

	public void init()throws Exception {
		refresh();
	}
}