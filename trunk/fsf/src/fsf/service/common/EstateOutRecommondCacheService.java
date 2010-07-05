package fsf.service.common;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import chance.base.BaseParameter;
import chance.common.QueryResult;
import fsf.action.est.estateout.EstateOutParameter;
import fsf.beans.est.estateout.EstateOut;
import fsf.dao.est.estateout.EstateOutDao;
import fsf.web.common.ConstantCache;

@Service("estateOutRecommondCacheService")
public class EstateOutRecommondCacheService implements ScheduleService{
	
	@Resource
	private EstateOutDao estateOutDao;

	public void destroy() {
		
	}

	public void init() {
		refresh();
	}

	public void refresh() {
		try {
			//自主推荐 top4 资讯内页
			BaseParameter param = new BaseParameter();
			param.getQueryDynamicConditions().put("_ne_tradeType", (short)1);
			param.getQueryDynamicConditions().put("_ne_isRecommond", (short)1);
			param.getQueryDynamicConditions().put("_nin_tradeMode", new Short[]{2,3});
			param.getQueryDynamicConditions().put("_ne_examine", (short)1);
			param.setCurrentPage(-1);
			param.setMaxResults(-1);
			param.setTopCount(4);
			param.getSortedConditions().put("createTime", BaseParameter.SORTED_DESC);
			ConstantCache.LISTOWNRECOMMOND = estateOutDao.doPaginationQuery(param).getResultList();
			//委托推荐 top4 资讯内页
			param.getQueryDynamicConditions().put("_ne_tradeType", (short)2);
			ConstantCache.LISTRECOMMOND = estateOutDao.doPaginationQuery(param).getResultList();
			//资讯首页、旺铺种类内页 右侧 top5
			param = new EstateOutParameter();
			param.setMaxResults(-1);
			param.setCurrentPage(-1);
			param.setTopCount(5);
			param.getSortedConditions().put("createTime", BaseParameter.SORTED_DESC);
			((EstateOutParameter)param).set_ne_isRecommond((short)1);
			((EstateOutParameter)param).set_nin_tradeMode(new Short[]{2,3});
			param.getQueryDynamicConditions().put("_ne_examine", (short)1);
			QueryResult<EstateOut> queryResult = estateOutDao.doPaginationQuery(param);
			ConstantCache.LISTRECOMMONDSALE = queryResult.getResultList();
			
			//顾问首页 右侧 top10
			param.setTopCount(10);
			queryResult = estateOutDao.doPaginationQuery(param);
			ConstantCache.LISTRECOMMONDSALE = queryResult.getResultList();
			
			//会员首页右侧自主推荐 top10
			param = new EstateOutParameter();
			param.setMaxResults(-1);
			param.setCurrentPage(-1);
			param.setTopCount(10);
			param.getSortedConditions().put("createTime", BaseParameter.SORTED_DESC);
			((EstateOutParameter)param).set_ne_isRecommond((short)1);
			((EstateOutParameter)param).set_ne_tradeType((short)1);
			((EstateOutParameter)param).set_nin_tradeMode(new Short[]{1,2,3});
			queryResult = estateOutDao.doPaginationQuery(param);
			ConstantCache.LISTOWNRECOMMOND10 = queryResult.getResultList();
			
			//会员首页右侧委托推荐 top10
			((EstateOutParameter)param).set_ne_tradeType((short)2);
			queryResult = estateOutDao.doPaginationQuery(param);
			ConstantCache.LISTRECOMMOND10 = queryResult.getResultList();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}