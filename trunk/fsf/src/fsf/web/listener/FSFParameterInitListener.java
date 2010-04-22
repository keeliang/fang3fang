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

import fsf.beans.sys.dict.DictItem;
import fsf.web.common.URLAuthority;
import fsf.web.common.WebConstant;

public class FSFParameterInitListener implements ServletContextListener{
	
	public static List<URLAuthority> protectedResource = new ArrayList<URLAuthority>();
	public static List<String> unProtectedResource = new ArrayList<String>();

	public void contextDestroyed(ServletContextEvent arg0) {
		
	}

	public void contextInitialized(ServletContextEvent event) {
		loadSystemParameter(event.getServletContext());
//		initURLAuthorized();
	}
	
	private void loadSystemParameter(ServletContext servletContext){
		String DictGroup = "DictGroup";
		String Dictitem = "DictItem";
		String itemKey = "ItemKey";
		String itemName = "ItemName";
		String itemDesc = "ItemDesc";
		
		String DynamicConfig = "DynamicConfig";
		String DynamicEntityConfig = "Entity";
		String ItemKeyProperty = "ItemKeyProperty";
		String ItemNameProperty = "ItemNameProperty";
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
		} catch (DocumentException e) {
			e.printStackTrace();
		} 
	}
	
	private void initURLAuthorized(){
		String URLAuthorized = "URLAuthorized.xml";
		String url = "url";
		String strProtected = "protected";
		String strUnProtected = "unProtected";
		String strValue = "value";
		String strRedirect = "redirect";
		SAXReader reader = new SAXReader();
		try {
			Document doc = reader.read(getClass().getClassLoader().getResource(URLAuthorized));
			Element root = doc.getRootElement();
			Element protectedElement = root.element(strProtected);
			Iterator<Element> it = protectedElement.elementIterator(url);
			for(;it.hasNext();){
				Element o = it.next();
				protectedResource.add(new URLAuthority(o.attributeValue(strValue),o.attributeValue(strRedirect)));
			}
			Element unProtectedElement  = root.element(strUnProtected);
			it = unProtectedElement.elementIterator(url);
			for(;it.hasNext();){
				Element o = it.next();
				unProtectedResource.add(o.attributeValue(strValue));
			}
		} catch (DocumentException e) {
			e.printStackTrace();
		}
	}
	
	public static List<URLAuthority> getProtectedResource(){
		return protectedResource;
	}
	
	public static List<String> getUnProtectedResource(){
		return unProtectedResource;
	}
}