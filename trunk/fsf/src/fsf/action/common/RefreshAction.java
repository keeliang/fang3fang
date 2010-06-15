package fsf.action.common;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Repository;

import com.opensymphony.xwork2.ActionSupport;

import fsf.service.common.IndexCacheService;
@Repository
public class RefreshAction extends ActionSupport {
	
	@Resource(name="indexCacheService")
	private IndexCacheService indexService;
	
	public void refresh() throws Exception {
		getHttpServletResponse().setContentType("text/html; charset=utf-8");
		indexService.refresh();
		getHttpServletResponse().getWriter().write("网站首页缓存刷新成功。<br/>");
	}
	
	public HttpServletResponse getHttpServletResponse(){
		return ServletActionContext.getResponse();
	}
}
