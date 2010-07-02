package fsf.service.common;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import chance.base.BaseParameter;
import chance.common.QueryResult;

import fsf.action.est.estateout.EstateOutParameter;
import fsf.beans.est.estateout.EstateOut;
import fsf.dao.est.estateout.EstateOutDao;

@Service("estateOutRecommondCacheService")
public class EstateOutRecommondCacheService implements ScheduleService{
	
	/**
	 * 自主推荐
	 */
	private static List<EstateOut> listOwnRecommond = new ArrayList<EstateOut>(4);
	
	/**
	 * 委托推荐
	 */
	private static List<EstateOut> listRecommond = new ArrayList<EstateOut>(4);
	
	/**
	 * 资讯和旺铺页面的推荐房源
	 */
	private static List<EstateOut> listRecommondSales = new ArrayList<EstateOut>(5);
	
	@Resource
	private EstateOutDao estateOutDao;

	public void destroy() {
		
	}

	public void init() {
		refresh();
	}

	public void refresh() {
		try {
			BaseParameter param = new BaseParameter();
			param.getQueryDynamicConditions().put("_ne_tradeType", (short)1);
			param.getQueryDynamicConditions().put("_ne_isRecommond", (short)1);
			param.getQueryDynamicConditions().put("_nin_tradeMode", new Short[]{2,3});
			param.getQueryDynamicConditions().put("_ne_examine", (short)1);
			param.setCurrentPage(-1);
			param.setMaxResults(-1);
			param.setTopCount(4);
			param.getSortedConditions().put("createTime", BaseParameter.SORTED_DESC);
			listOwnRecommond = estateOutDao.doPaginationQuery(param).getResultList();
			
			param.getQueryDynamicConditions().put("_ne_tradeType", (short)2);
			listRecommond = estateOutDao.doPaginationQuery(param).getResultList();
			
			
			param = new EstateOutParameter();
			param.setMaxResults(-1);
			param.setCurrentPage(-1);
			param.setTopCount(5);
			param.getSortedConditions().put("createTime", BaseParameter.SORTED_DESC);
			((EstateOutParameter)param).set_ne_isRecommond((short)1);
			((EstateOutParameter)param).set_nin_tradeMode(new Short[]{2,3});
			param.getQueryDynamicConditions().put("_ne_examine", (short)1);
			QueryResult<EstateOut> queryResult = estateOutDao.doPaginationQuery(param);
			listRecommondSales = queryResult.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static List<EstateOut> getListOwnRecommond(){
		return listOwnRecommond;
	}
	
	public static List<EstateOut> getListRecommond(){
		return listRecommond;
	}

	public static List<EstateOut> getListRecommondSales() {
		return listRecommondSales;
	}
}