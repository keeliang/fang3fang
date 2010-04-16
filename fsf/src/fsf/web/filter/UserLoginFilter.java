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
		if (isProtectedResource(uri,contextPath)) {
			User user = (User) request.getSession().getAttribute(
					WebConstant.SESSION_USER);
			if (user != null) {
				ThreadUser.set(user);
			} else {
				if (uri.startsWith(contextPath + sysadminURL)) {
//					response.sendRedirect("");
					System.out.println("后台登陆");
				}else{
					System.out.println("前台登陆");
				}
				return ;
			}
		}
		chain.doFilter(req, res);
	}

	private boolean isProtectedResource(String uri,String contextPath) {
		boolean result = false;
		List<String> protectedResource = FSFParameterInitListener.getProtectedResource();
		List<String> unProtectedResource = FSFParameterInitListener.getUnProtectedResource();
		for(Iterator<String> it = protectedResource.iterator();it.hasNext();){
			String s = it.next();
			if(s.indexOf("*")>0){
				if(uri.startsWith(s.substring(0, s.indexOf("*")))){
					result = true;
					break;
				}
			}else{
				if(uri.equals(contextPath+s)){
					result = true;
					break;
				}
			}
		}
		
		for(Iterator<String> it = unProtectedResource.iterator();it.hasNext();){
			String s = it.next();
			if(s.indexOf("*")>0){
				if(uri.startsWith(s.substring(0, s.indexOf("*")))){
					result = false;
					break;
				}
			}else{
				if(uri.equals(contextPath+s)){
					result = false;
					break;
				}
			}
		}
		return result;
	}

}
