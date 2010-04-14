package fsf.action.example;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import chance.base.action.BaseAction;
import fsf.beans.example.SystemUser;
import fsf.service.example.UserService;

@Scope("prototype")
@Controller
public class UserAction extends BaseAction<SystemUser>{
	
	private String id;
	private String name;
	private String password;
	
	public UserAction(){
		super(SystemUser.class,new String[] {"id"});
		//test
		UserParameter userParameter = new UserParameter();
		userParameter.set_ne_name("aa");
		System.out.println("aa");
		System.err.println("bb");
		this.setUserParameter(userParameter);
	}
	
	@Resource
	public void setUserService(UserService userService){
		this.service = userService;
	}
	
	public void setUserParameter(UserParameter userParameter){
		this.baseParameter = userParameter;
	}
	
	public UserParameter getUserParameter(){
		return (UserParameter)baseParameter;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
