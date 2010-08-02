package fsf.web.listener;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import fsf.beans.sys.advertisement.Advertisement;
import fsf.beans.sys.config.SysConfig;
import fsf.service.sys.advertisement.AdvertisementService;
import fsf.service.sys.config.SysConfigService;
import fsf.web.common.ConstantCache;

/**
 * 
 * @author lisc
 * 
 */
public class SystemConfigInitListener implements ServletContextListener {
	
	public static Map<String,String> sysConfig = new HashMap<String,String>();

	public void contextInitialized(ServletContextEvent event) {
		systemConfigInit(event.getServletContext());
	}

	public void contextDestroyed(ServletContextEvent event) {

	}
	
	private void systemConfigInit(ServletContext servletContext){
		WebApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(servletContext);
		SysConfigService sysConfigService = (SysConfigService)ctx.getBean("sysConfigServiceImpl");
		List<SysConfig> list = sysConfigService.doQueryAll();
		for(SysConfig config:list){
			sysConfig.put(config.getItem(), config.getValue());
		}
		
		AdvertisementService advertisementService = (AdvertisementService)ctx.getBean("advertisementServiceImpl");
		List<Advertisement> list2 = advertisementService.doQueryAll();
		Map<String,Advertisement> map2 = new HashMap<String, Advertisement>();
		Map<String,Advertisement> map3 = new HashMap<String, Advertisement>();
		for(Advertisement adv:list2){
			if((byte)0==adv.getType())
				map2.put(adv.getAdvertisementName(), adv);
			else
				map3.put(adv.getAdvertisementName(), adv);
		}
		ConstantCache.MAPADVERTISEMENT = map2;
		ConstantCache.MAPADVERTISEMENTINFO = map3;
	}
}
