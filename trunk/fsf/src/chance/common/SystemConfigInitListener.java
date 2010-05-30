package chance.common;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import fsf.beans.sys.config.SysConfig;
import fsf.service.sys.config.SysConfigService;

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
	}
}
