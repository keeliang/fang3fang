package fsf.action.forum;

import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

import fsf.beans.sys.user.User;
import fsf.service.forum.ForumService;
import fsf.util.MD5;

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
		/*if(user==null){
			user = new User();
			MD5 md5 = new MD5();
			user.setUserCode("2010050400000001");
			user.setUserName("test");
			user.setPassword(md5.getMD5ofStr("test"));
			user.setCreateDate(new Date());
			user.setEmail("aa@test.com");
			user.setMsn("test@hotmail.com");
			user.setAddress("test address");
			user.setStatus((short)1);
			user.setUserType((short)0);
		}*/
		
		if(user==null || "".equals(user.getUserCode())){
			return "fsfLogin";
		}
		
		//if user is admin or super adminstrator, not insert a record in forum user
		if(!forumService.checkForumUser(user.getUserCode()) && user.getUserType()>1){
			//the user does not exists in forum_users table
			//insert into forum_users
			forumService.addForumUser(user);
		}
		
		String loginUserName="";
		String loginPassword="";
		//if user is adminstrator or supper adminstrator,user Admin admin to login
		if(user.getUserType()>1){
			loginUserName = "Admin";
			loginUserName = "21232f297a57a5a743894a0e4a801fc3";
		}else{
			loginUserName = user.getUserName();
			loginUserName = user.getPassword();
		}
		req.setAttribute("username", loginUserName);
		req.setAttribute("password",loginPassword);
		req.setAttribute("returnPath", "");
		req.setAttribute("autologin", "false");
		return "forumLogin";
	}

	@Resource
	public void setForumService(ForumService forumService) {
		this.forumService = forumService;
	}
}
