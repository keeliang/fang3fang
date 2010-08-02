package fsf.service.common;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import chance.base.BaseParameter;
import fsf.action.est.estateout.EstateOutParameter;
import fsf.dao.est.estateout.EstateOutDao;
import fsf.web.common.ConstantCache;

@Service("estateOutRecommondCacheService")
@Transactional
public class EstateOutRecommondCacheService implements ScheduleService{
	
	@Resource
	private EstateOutDao estateOutDao;

	public void destroy() {
		
	}
	
	@Transactional(readOnly=true,propagation=Propagation.NOT_SUPPORTED)
	public void init() {
		refresh();
	}

	@Transactional(readOnly=true,propagation=Propagation.NOT_SUPPORTED)
	public void refresh() {
		try {
			//自主推荐 top4 资讯内页
			BaseParameter param = new BaseParameter();
			param.getQueryDynamicConditions().put("_ne_tradeType", (short)1);
			param.getQueryDynamicConditions().put("_ne_isRecommond", (short)1);
			param.getQueryDynamicConditions().put("_nin_tradeMode", new Short[]{2,3});
			param.getQueryDynamicConditions().put("_ne_examine", (short)1);
			param.setTopCount(4);
			param.getSortedConditions().put("createTime", BaseParameter.SORTED_DESC);
			ConstantCache.LISTOWNRECOMMOND = estateOutDao.doQuery(param);
			//委托推荐 top4 资讯内页
			param.getQueryDynamicConditions().put("_ne_tradeType", (short)2);
			ConstantCache.LISTRECOMMOND = estateOutDao.doQuery(param);
			//资讯首页 右侧 top10
			param = new EstateOutParameter();
			param.getSortedConditions().put("createTime", BaseParameter.SORTED_DESC);
			((EstateOutParameter)param).set_ne_isRecommond((short)1);
			((EstateOutParameter)param).set_nin_tradeMode(new Short[]{2,3});
			param.getQueryDynamicConditions().put("_ne_examine", (short)1);
			param.setTopCount(10);
			ConstantCache.LISTRECOMMONDSALE = estateOutDao.doQuery(param);
			//顾问右侧
			param.setTopCount(8);
			ConstantCache.LISTRECOMMONDSALE8 = estateOutDao.doQuery(param);
			
			//会员首页右侧自主推荐 top10
			param = new EstateOutParameter();
			param.setTopCount(10);
			param.getSortedConditions().put("createTime", BaseParameter.SORTED_DESC);
			((EstateOutParameter)param).set_ne_isRecommond((short)1);
			((EstateOutParameter)param).set_ne_tradeType((short)1);
			((EstateOutParameter)param).set_nin_tradeMode(new Short[]{1,2,3});
			ConstantCache.LISTOWNRECOMMOND10 = estateOutDao.doQuery(param);
			
			
			//会员首页右侧委托推荐 top10
			((EstateOutParameter)param).set_ne_tradeType((short)2);
			ConstantCache.LISTRECOMMOND10 = estateOutDao.doQuery(param);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}