package fsf.action.forum;

import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import net.jforum.util.MD5;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

import fsf.beans.sys.user.User;
import fsf.service.forum.ForumService;

@Controller
@Scope("prototype")
public class ForumAction extends ActionSupport {
	private static final long serialVersionUID = 5807332738874672694L;

	ForumService forumService;
	
	public String goToForum(){
		HttpServletRequest req = ServletActionContext.getRequest();
		HttpSession session = req.getSession();
		User user = (User)session.getAttribute("user");
		/*
		 * test
		 */
		if(user==null){
			user = new User();
			user.setUserCode("2010050400000001");
			user.setUserName("test");
			user.setPassword(MD5.crypt("test"));
			user.setCreateDate(new Date());
			user.setEmail("aa@test.com");
			user.setMsn("test@hotmail.com");
			user.setAddress("test address");
			user.setStatus((short)1);
		}
		
		if(user==null || "".equals(user.getUserCode())){
			return "fsfLogin";
		}
		
		if(!forumService.checkForumUser(user.getUserCode())){
			//the user does not exists in forum_users table
			//insert into forum_users
			forumService.addForumUser(user);
		}
		req.setAttribute("username", user.getUserName());
		req.setAttribute("password","test");
		req.setAttribute("returnPath", "");
		req.setAttribute("autologin", "false");
		return "forumLogin";
	}

	@Resource
	public void setForumService(ForumService forumService) {
		this.forumService = forumService;
	}
}
