package fsf.web.listener;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import fsf.beans.sys.city.City;
import fsf.beans.sys.dict.DictItem;
import fsf.beans.sys.district.District;
import fsf.beans.sys.province.Province;
import fsf.service.forum.ForumImageService;
import fsf.service.sys.attention.AttentionService;
import fsf.service.sys.city.CityService;
import fsf.service.sys.dict.DictItemService;
import fsf.service.sys.district.DistrictService;
import fsf.service.sys.pageinfo.PageInfoService;
import fsf.service.sys.province.ProvinceService;
import fsf.web.common.ConstantCache;
import fsf.web.common.EstFilter;
import fsf.web.common.WebConstant;

public class FSFParameterInitListener implements ServletContextListener{

	public void contextDestroyed(ServletContextEvent arg0) {
		
	}

	public void contextInitialized(ServletContextEvent event) {
		loadSystemParameter(event.getServletContext());
		loadEstFilter(event.getServletContext());
		loadPageInfoCache(event.getServletContext());
		loadAttentionCache(event.getServletContext());
		loadForumImageCache(event.getServletContext());
	}
	
	/**
	 * 会员首页注意事项
	 * @param servletContext
	 */
	public void loadAttentionCache(ServletContext servletContext){
		WebApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(servletContext);
		AttentionService attentionService = (AttentionService)ctx.getBean("attentionServiceImpl");
		ConstantCache.SALEATTENTIONCACHE = attentionService.getAttentionCache((byte)1);
		ConstantCache.BUYATTENTIONCACHE = attentionService.getAttentionCache((byte)2);
	}
	
	/**
	 * 首页页面信息
	 * @param servletContext
	 */
	private void loadPageInfoCache(ServletContext servletContext){
		WebApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(servletContext);
		PageInfoService pageInfoService = (PageInfoService)ctx.getBean("pageInfoServiceImpl");
		ConstantCache.PAGEINFOCACHE = pageInfoService.getPageInfoCache(); 
	}
	
	/**
	 * 加载房产过滤条件配置文件
	 * @param servletContext
	 */
	private void loadEstFilter(ServletContext servletContext){
		String estOut = "estOut";
		String place = "place";
		String province = "province";
		String city = "city";
		String district = "district";
		String area = "area";
		String bedroom = "bedroom";
		String item = "item";
		String name = "name";
		String from = "from";
		String to = "to";
		String estIn = "estIn";
		String rentPrice = "rentPrice";
		String salePrice = "salePrice";
		String lowArea = "lowArea";
		String highArea = "highArea";
		String value = "value";
		
		SAXReader reader = new SAXReader();
		try {
			Document doc = reader.read(getClass().getClassLoader().getResource(WebConstant.EST_FILTER_PATH));
			Element root = doc.getRootElement();
			Element eEstOut = root.element(estOut);
			Element ePalce = root.element(place);
			Element eBedrooom = root.element(bedroom);
			Element eEstIn = root.element(estIn);
			
			WebApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(servletContext);
			
			ProvinceService provinceService = (ProvinceService)ctx.getBean("provinceServiceImpl");
			CityService cityService = (CityService)ctx.getBean("cityServiceImpl");
			DistrictService districtService = (DistrictService)ctx.getBean("districtServiceImpl");
			//地方
			Iterator<Element> itItem = ePalce.elementIterator();
			List<EstFilter> listPlace = new ArrayList<EstFilter>();
			for(;itItem.hasNext();){
				Element o = itItem.next();
				EstFilter ef = new EstFilter();
				if(province.equals(o.getName())){
					Province p = provinceService.get(Integer.valueOf(o.getTextTrim()));
					ef.setFrom("provinceId_"+p.getProvinceId());
					ef.setName(p.getProvinceName());
				}else if(city.equals(o.getName())){
					City c = cityService.get(Integer.valueOf(o.getTextTrim()));
					ef.setFrom("cityId_"+c.getCityId());
					ef.setName(c.getCityName());
				}else if(district.equals(o.getName())){
					District d = districtService.get(Integer.valueOf(o.getTextTrim()));
					ef.setFrom("districtId_"+d.getDistrictId());
					ef.setName(d.getDistrictName());
				}
				listPlace.add(ef);
			}
			
			//房数
			itItem = eBedrooom.elementIterator(item);
			List<EstFilter> listBedroom = new ArrayList<EstFilter>();
			for(;itItem.hasNext();){
				Element o = itItem.next();
				listBedroom.add(new EstFilter(o.elementText(name),o.elementText(from),o.elementText(to),o.elementText(value)));
			}
			
			//租价
			Element eRentPriceOut = eEstOut.element(rentPrice);
			itItem = eRentPriceOut.elementIterator(item);
			List<EstFilter> listRentPriceOut = new ArrayList<EstFilter>();
			for(;itItem.hasNext();){
				Element o = itItem.next();
				listRentPriceOut.add(new EstFilter(o.elementText(name),o.elementText(from),o.elementText(to)));
			}
			//售价
			Element eSalesPriceOut = eEstOut.element(salePrice);
			itItem = eSalesPriceOut.elementIterator(item);
			List<EstFilter> listSalePriceOut = new ArrayList<EstFilter>();
			for(;itItem.hasNext();){
				Element o = itItem.next();
				listSalePriceOut.add(new EstFilter(o.elementText(name),o.elementText(from),o.elementText(to)));
			}
			
			//面积
			Element eArea = eEstOut.element(area);
			itItem = eArea.elementIterator(item);
			List<EstFilter> listArea = new ArrayList<EstFilter>();
			for(;itItem.hasNext();){
				Element o = itItem.next();
				listArea.add(new EstFilter(o.elementText(name),o.elementText(from),o.elementText(to)));
			}
			
			//求租求购
			
			//最低接受租价
			Element eRentPrice = eEstIn.element(rentPrice);
			itItem = eRentPrice.elementIterator(item);
			List<EstFilter> listRentPrice = new ArrayList<EstFilter>();
			for(;itItem.hasNext();){
				Element o = itItem.next();
				listRentPrice.add(new EstFilter(o.elementText(name),o.elementText(value),null));
			}
			
			//最低接受购价
			Element eSalePrice = eEstIn.element(salePrice);
			itItem = eSalePrice.elementIterator(item);
			List<EstFilter> listSalePrice = new ArrayList<EstFilter>();
			for(;itItem.hasNext();){
				Element o = itItem.next();
				listSalePrice.add(new EstFilter(o.elementText(name),o.elementText(value),null));
			}
			//最低接受面积
			Element eLowArea = eEstIn.element(lowArea);
			itItem = eLowArea.elementIterator(item);
			List<EstFilter> listLowArea = new ArrayList<EstFilter>();
			for(;itItem.hasNext();){
				Element o = itItem.next();
				listLowArea.add(new EstFilter(o.elementText(name),o.elementText(value),null));
			}
			//最高接受面积
			Element eHighArea = eEstIn.element(highArea);
			itItem = eHighArea.elementIterator(item);
			List<EstFilter> listHighArea = new ArrayList<EstFilter>();
			for(;itItem.hasNext();){
				Element o = itItem.next();
				listHighArea.add(new EstFilter(o.elementText(name),o.elementText(value),null));
			}
			

			Map<String,List<EstFilter>> map = new HashMap<String, List<EstFilter>>(3);

			map.put(place, listPlace);
			
			map.put("rentPriceOut", listRentPriceOut);
			map.put("salePriceOut", listSalePriceOut);
			map.put(area, listArea);
			map.put(bedroom, listBedroom);
			
			map.put(rentPrice, listRentPrice);
			map.put(salePrice, listSalePrice);
			map.put(lowArea, listLowArea);
			map.put(highArea, listHighArea);
			
			servletContext.setAttribute(WebConstant.EST_FILTER, map);
			
		} catch (DocumentException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 加载固定参数配置文件
	 * @param servletContext
	 */
	private void loadSystemParameter(ServletContext servletContext){
		String DictGroup = "DictGroup";
		String Dictitem = "Dictitem";
		String itemKey = "itemKey";
		String itemName = "itemName";
		String itemDesc = "itemDesc";
		
		String DynamicConfig = "DynamicConfig";
		String DynamicEntityConfig = "Entity";
		String ItemKeyProperty = "ItemKeyProperty";
		String ItemNameProperty = "ItemNameProperty";
		
		String DictItemCache = "DictItemCache";
		
		SAXReader reader = new SAXReader();
		try {
			Document doc = reader.read(getClass().getClassLoader().getResource(WebConstant.DICT_CONFIG_PATH));
			Element root = doc.getRootElement();
			// static config
			Map<String, Object> sysConfig = new HashMap<String, Object>();
			for(Iterator<Element> itGroup = root.elementIterator(DictGroup);itGroup.hasNext();){
				Element dictGroup = itGroup.next();
				String groupName = dictGroup.attributeValue("name");
				List<DictItem> list = new ArrayList<DictItem>();
				for(Iterator<Element> itItem = dictGroup.elementIterator(Dictitem);itItem.hasNext();){
					Element dictItem = itItem.next();
					DictItem item = new DictItem();
					item.setGroupName(groupName);
					item.setItemKey(dictItem.attributeValue(itemKey));
					item.setItemName(dictItem.elementText(itemName));
					item.setItemDesc(dictItem.elementText(itemDesc));
					list.add(item);
				}
				sysConfig.put(groupName, list);
			}
			//dynamic config
			for(Iterator<Element> it = root.elementIterator(DynamicConfig);it.hasNext();){
				Element element = it.next();
				String groupName = element.attributeValue("name");
				String[] array = new String[3];
				array[0] = element.elementText(DynamicEntityConfig);
				array[1] = element.elementText(ItemKeyProperty);
				array[2] = element.elementText(ItemNameProperty);
				sysConfig.put(groupName, array);
			}
			servletContext.setAttribute(WebConstant.SYSCONFIG, sysConfig);
			
			//直接将参数表加入到缓存中
			WebApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(servletContext);
			DictItemService dictItemService = (DictItemService)ctx.getBean("dictItemServiceImpl");
			
			Element elementCache = root.element(DictItemCache);
			if(elementCache!=null){
				Map<String,List<DictItem>> map  = new HashMap<String, List<DictItem>>();
				for(Iterator<Element> itCache = elementCache.elementIterator(DictGroup);itCache.hasNext();){
					Element dictGroup = itCache.next();
					map.put(dictGroup.getTextTrim(), dictItemService.queryByProerties("groupName", dictGroup.getTextTrim()));
				}
				servletContext.setAttribute(WebConstant.CONIFG_DICT_CACHE, map);
			}
		} catch (DocumentException e) {
			e.printStackTrace();
		} 
	}
	
	/**
	 * 首页页面信息
	 * @param servletContext
	 */
	private void loadForumImageCache(ServletContext servletContext){
		WebApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(servletContext);
		ForumImageService forumImageService = (ForumImageService)ctx.getBean("forumImageServiceImpl");
		ConstantCache.LISTFORUMIMAGE = forumImageService.getForumImageCache();
	}
	
}

