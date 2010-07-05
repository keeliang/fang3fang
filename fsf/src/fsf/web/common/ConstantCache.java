package fsf.web.common;

import java.util.List;
import java.util.Map;

import fsf.beans.est.commerce.Commerce;
import fsf.beans.est.estateout.EstateOut;
import fsf.beans.info.information.Information;

public final class ConstantCache {

	/**
	 * 页面信息缓存
	 */
	public static Map<String,String> PAGEINFOCACHE ;
	/**
	 * 首页最新带图房源
	 */
	public static List<EstateOut> LISTNEWESTATE;
	/**
	 * 首页最新旺铺招商
	 */
	public static List<Commerce> LISTCOMMERCE;
	/**
	 * 首页最新的10条资讯
	 */
	public static List<Information> LISTINFO;
	/**
	 * 首页最新的带图滚动资讯
	 */
	public static List<Information> LISTROLLINFO;
	/**
	 * 会员首页买房注意事项缓存
	 */
	public static Map<Integer,String> SALEATTENTIONCACHE;
	/**
	 * 会员首页卖房注意事项缓存
	 */
	public static Map<Integer,String> BUYATTENTIONCACHE;
}
