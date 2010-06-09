package fsf.service.common;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import chance.base.BaseParameter;

import fsf.beans.est.estateout.EstateOut;
import fsf.dao.est.estateout.EstateOutDao;

@Service("")
public class EstateOutRecommondCacheService implements ScheduleService{
	
	/**
	 * 自主推荐
	 */
	private static List<EstateOut> listOwnRecommond = new ArrayList<EstateOut>(4);
	
	/**
	 * 委托推荐
	 */
	private static List<EstateOut> listRecommond = new ArrayList<EstateOut>(4);
	
	@Resource
	private EstateOutDao estateOutDao;

	public void destroy() {
		
	}

	public void init() {
		
	}

	public void refresh() {
		BaseParameter param = new BaseParameter();
		param.getQueryDynamicConditions().put("_ne_tradeType", (short)1);
		param.getQueryDynamicConditions().put("_ne_isRecommond", (short)1);
		param.getQueryDynamicConditions().put("_nin_tradeMode", new Short[]{2,3});
		param.setCurrentPage(-1);
		param.setMaxResults(-1);
		param.setTopCount(4);
		param.getSortedConditions().put("createTime", BaseParameter.SORTED_DESC);
		try {
			listOwnRecommond = estateOutDao.doPaginationQuery(param).getResultList();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}