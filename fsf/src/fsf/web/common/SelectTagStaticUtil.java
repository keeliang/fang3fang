package fsf.web.common;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;

import net.sf.ehcache.Cache;
import net.sf.ehcache.CacheManager;
import net.sf.ehcache.Element;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import chance.base.BaseParameter;
import chance.cache.EhcacheManagerFactory;

import com.opensymphony.xwork2.ActionContext;

import fsf.beans.sys.dict.DictItem;
import fsf.service.sys.dict.DictItemService;

public class SelectTagStaticUtil {
	
	public static List<DictItem> getConfig(String groupName)throws Exception{
		return getConfig(groupName,null,null);
	}
	
	public static List<DictItem> getConfig(String groupName,String condition)throws Exception{
		return getConfig(groupName,condition,null);
	}
	
	/**
	 * accoding to file dictConfig.xml or table sys_dictitem get 
	 * @param groupName DynamicConfig name
	 * @return
	 * @throws Exception
	 */
	public static List<DictItem> getConfig(String groupName,String condition,String exclude) throws Exception{
		List<DictItem> list = null;
		//config from sys_dictitem
    	if(groupName.startsWith(WebConstant.DATA_DICT)){
    		
    		Map<String,List<DictItem>> map = (Map<String,List<DictItem>>)getServletContext().getAttribute(WebConstant.CONIFG_DICT_CACHE);
    		list = map.get(groupName.substring(1));
    		if(list==null){
    			CacheManager cacheManager = EhcacheManagerFactory.getInstance();
        		Cache cache = cacheManager.getCache("customer.DictItem");
        		Element element  = cache.get(groupName.substring(1));
        		if(element!=null){
        			list = (List<DictItem>)element.getValue();
        		}else{
        			ApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(getServletContext());
                    DictItemService dictItemService =  (DictItemService)ctx.getBean("dictItemServiceImpl");
                    BaseParameter param = new BaseParameter();
                    param.getQueryDynamicConditions().put("_se_groupName", groupName.substring(1));
                    param.getSortedConditions().put("seq", BaseParameter.SORTED_ASC);
                    list = dictItemService.doQuery(param);
                    cache.put(new Element(groupName.substring(1),list));
        		}
			}
    		if(exclude!=null && !"".equals(exclude)){
    			String[] array = exclude.split(";");
				StringBuffer sb = new StringBuffer();
				for(String ex :array){
					sb.append(transfer(ex));
				}
				List<DictItem> resultList = new ArrayList<DictItem>();
				for(Iterator<DictItem> it = list.iterator();it.hasNext();){
					DictItem d = it.next();
					String k = d.getItemKey();
					if(sb.toString().indexOf(transfer(k))==-1){
						resultList.add(d);
					}
				}
				list = resultList;
    		}
    	}
    	//config from DictConfig.xml and dynamic table
    	else if(groupName.startsWith(WebConstant.CONFIG_DICT)){
    		Map<String,Object> sysConfig = (Map<String,Object>)getServletContext().getAttribute(WebConstant.SYSCONFIG);
    		if(sysConfig.containsKey(groupName.substring(1))){
    			Object cache =sysConfig.get(groupName.substring(1));
    			// config from DictConfig.xml
    			if(cache instanceof List){
    				list = (List<DictItem>)sysConfig.get(groupName.substring(1));
    			}
    			// config from table
    			else if(cache instanceof String[]){
    				String[] aryCache = (String[])cache;
	    			ApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(getServletContext());
    				DictItemService dictItemService =  (DictItemService)ctx.getBean("dictItemServiceImpl");
    				BaseParameter param = new BaseParameter();
    				if(condition!=null && !"".equals(condition.trim())){
    					String[] array = condition.split(";");
        				for(String cond :array){
        					String[] aryParam = cond.split(":");
        					if(aryParam.length==2){
        						param.getQueryDynamicConditions().put(aryParam[0], aryParam[1]);
        					}
        				}
    				}
    				list = dictItemService.getDaynamicConfig(aryCache[0], aryCache[1], aryCache[2], param);
    				if(exclude!=null && !"".equals(exclude)){
    					String[] array = exclude.split(";");
    					StringBuffer sb = new StringBuffer();
    					for(String ex :array){
        					sb.append(transfer(ex));
        				}
    					for(Iterator<DictItem> it = list.iterator();it.hasNext();){
    						DictItem d = it.next();
    						String k = d.getItemKey();
    						if(sb.toString().indexOf(transfer(k))!=-1){
    							list.remove(d);
    						}
    					}
    				}
    			}
    		}
    	}
    	return list==null?new ArrayList():list;
	}
	
	private static String transfer(String str){
		return "##"+str+"||";
	}
	
	/**
	 * get org.springframework.web.context.WebApplicationContext
	 * @return
	 */
	public static WebApplicationContext getWebApplicationContext(){ 
		return WebApplicationContextUtils.getWebApplicationContext(getServletContext());
	}
	/**
	 * get javax.servlet.ServletContext
	 * @return
	 */
	public static ServletContext  getServletContext(){
		return (ServletContext)getActionContext().get(ServletActionContext.SERVLET_CONTEXT);
	}
	/**
	 * get com.opensymphony.xwork2.ActionContext
	 * @return
	 */
	public static ActionContext getActionContext(){
		return ActionContext.getContext();
	}
}
