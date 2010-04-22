package fsf.web.filter;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fsf.beans.sys.user.User;
import fsf.web.common.ThreadUser;
import fsf.web.common.URLAuthority;
import fsf.web.common.WebConstant;
import fsf.web.listener.FSFParameterInitListener;

public class UserLoginFilter implements Filter {

	private static final String sysadminURL = "/sysadmin";

	public void init(FilterConfig config) throws ServletException {

	}

	public void destroy() {

	}

	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain chain) throws IOException, ServletException {

		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) res;
		String contextPath = request.getContextPath();
		String uri = request.getRequestURI();
		String redirect = isProtectedResource(uri,contextPath);
		if (!"".equals(redirect)) {
			User user = (User) request.getSession().getAttribute(WebConstant.SESSION_USER);
			if (user != null) {
				ThreadUser.set(user);
			} else {
				response.sendRedirect(contextPath+redirect);
				return ;
			}
		}
		chain.doFilter(req, res);
	}

	private String isProtectedResource(String uri,String contextPath) {
		List<URLAuthority> protectedResource = FSFParameterInitListener.getProtectedResource();
		List<String> unProtectedResource = FSFParameterInitListener.getUnProtectedResource();
		String redirect = "";
		for(Iterator<URLAuthority> it = protectedResource.iterator();it.hasNext();){
			URLAuthority urlAuthority = it.next();
			if(urlAuthority.getResource().indexOf("*")>0){
				if(uri.startsWith(urlAuthority.getResource().substring(0, urlAuthority.getResource().indexOf("*")))){
					redirect = urlAuthority.getRedirect();
					break;
				}
			}else if(uri.equals(contextPath+urlAuthority.getResource())){
				redirect = urlAuthority.getRedirect();
				break;
			}
		}
		for(Iterator<String> it = unProtectedResource.iterator();it.hasNext();){
			String s = it.next();
			if(s.indexOf("*")>0){
				if(uri.startsWith(s.substring(0, s.indexOf("*")))){
					redirect = "";
					break;
				}
			}else if(uri.equals(contextPath+s)){
				redirect = "";
				break;
			}
		}
		return redirect;
	}

}
