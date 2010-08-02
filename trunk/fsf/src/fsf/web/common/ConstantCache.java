package fsf.web.common;

import java.util.List;
import java.util.Map;

import fsf.beans.est.commerce.Commerce;
import fsf.beans.est.estateout.EstateOut;
import fsf.beans.forum.ForumImage;
import fsf.beans.info.information.Information;
import fsf.beans.sys.advertisement.Advertisement;

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
	/**
	 * 自主推荐房源 top4
	 */
	public static List<EstateOut> LISTOWNRECOMMOND ;
	/**
	 * 委托推荐房源 top4
	 */
	public static List<EstateOut> LISTRECOMMOND;
	/**
	 * 资讯推荐房源 top10
	 */
	public static List<EstateOut> LISTRECOMMONDSALE;
	/**
	 * 顾问首页 右侧 top10
	 */
	public static List<EstateOut> LISTRECOMMONDSALE8;
	/**
	 * 会员首页右侧自主推荐 top10
	 */
	public static List<EstateOut> LISTOWNRECOMMOND10;
	/**
	 * 会员首页右侧委托推荐 top10
	 */
	public static List<EstateOut> LISTRECOMMOND10;
	/**
	 * 广告缓存
	 */
	public static Map<String,Advertisement> MAPADVERTISEMENT;
	/**
	 * 资讯首页土图片
	 */
	public static Map<String,Advertisement> MAPADVERTISEMENTINFO;
	/**
	 * 业主论坛图片缓存
	 */
	public static List<ForumImage> LISTFORUMIMAGE;
}
