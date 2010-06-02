package fsf.web.filter;

import java.io.IOException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

import fsf.beans.sys.user.User;
import fsf.web.common.ThreadUser;
import fsf.web.common.WebConstant;

public class UserLoginFilter implements Filter {
	/**
	 * 后台不需要登录的URL
	 */
	static Set<String> BackMangerNotNeedLoginURL = new HashSet<String>();
	/**
	 * 前台需要登录的URL
	 */
	static Set<String> FontNeedLoginSet = new HashSet<String>();

	public void init(FilterConfig config) throws ServletException {
		String URLAuthorized = "URLAuthorized.xml";
		String backManagerNotProtected = "BackManagerNotProtected";
		String resource = "resource";
		String url = "url";
		String frontProtected = "FrontProtected";
		SAXReader reader = new SAXReader();
		try {
			Document doc = reader.read(getClass().getClassLoader().getResource(URLAuthorized));
			Element root = doc.getRootElement();
			Element backManagerNotProtectedElement = root.element(backManagerNotProtected);
			Iterator<Element> it = backManagerNotProtectedElement.elementIterator(resource);
			for(;it.hasNext();){
				Element o = it.next();
				BackMangerNotNeedLoginURL.add(o.attributeValue(url));
			}
			Element frontProtectedElement = root.element(frontProtected);
			it = frontProtectedElement.elementIterator(resource);
			for(;it.hasNext();){
				Element o = it.next();
				FontNeedLoginSet.add(o.attributeValue(url));
			}
		} catch (DocumentException e) {
			e.printStackTrace();
		}
	}

	public void destroy() {

	}
	
	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain chain) throws IOException, ServletException {

		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) res;
		String contextPath = request.getContextPath();
		String uri = request.getRequestURI();
		//后台
		if(uri.startsWith(contextPath+"/AdminPage")||uri.startsWith(contextPath+"/sysadmin")){
			if(!BackMangerNotNeedLoginURL.contains(contextPath+uri)){
				User user = (User) request.getSession().getAttribute(WebConstant.SESSION_USER);
				if (user != null) {
					ThreadUser.set(user);
				} else {
					response.sendRedirect("/AdminPage/tologin.jsp");
					return;
				}
			}
		}
		//前台
		else{
			if(FontNeedLoginSet.contains(contextPath+uri)){
				User user = (User) request.getSession().getAttribute(WebConstant.SESSION_USER);
				if (user != null) {
					ThreadUser.set(user);
				} else {
					response.sendRedirect("/member/login.jsp");
					return;
				}
			}
		}
		chain.doFilter(req, res);
	}
}
