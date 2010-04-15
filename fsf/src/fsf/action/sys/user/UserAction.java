package fsf.action.sys.user;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import fsf.beans.sys.user.User;
import chance.base.action.BaseAction;
import chance.base.BaseParameter;
import fsf.service.sys.user.UserService;

@Controller
@Scope("prototype")
public class UserAction extends BaseAction<User> {
	
	public UserAction() {
		super(User.class, new String[] { "userId" });
	}
	
	@Resource
	public void setUserService(UserService userService){
		this.service = userService;
	}

	public void setUserParameter(UserParameter param){
		this.baseParameter = param;
	}
	public UserParameter getUserParameter(){
		return (UserParameter)baseParameter;
	}
	
	private Integer userId;
	private String userCode;
	private String password;
	private String userName;
	private Short status;
	private Short userType;
	private Integer provinceId;
	private Integer cityId;
	private Integer regionId;
	private String address;
	private String tel;
	private String email;
	private Date createDate;
	private String imagePath;

	public void setUserId(Integer userId){
		this.userId = userId;
	}
	public Integer getUserId(){
		return this.userId;
	}
	public void setUserCode(String userCode){
		this.userCode = userCode;
	}
	public String getUserCode(){
		return this.userCode;
	}
	public void setPassword(String password){
		this.password = password;
	}
	public String getPassword(){
		return this.password;
	}
	public void setUserName(String userName){
		this.userName = userName;
	}
	public String getUserName(){
		return this.userName;
	}
	public void setStatus(Short status){
		this.status = status;
	}
	public Short getStatus(){
		return this.status;
	}
	public void setUserType(Short userType){
		this.userType = userType;
	}
	public Short getUserType(){
		return this.userType;
	}
	public void setProvinceId(Integer provinceId){
		this.provinceId = provinceId;
	}
	public Integer getProvinceId(){
		return this.provinceId;
	}
	public void setCityId(Integer cityId){
		this.cityId = cityId;
	}
	public Integer getCityId(){
		return this.cityId;
	}
	public void setRegionId(Integer regionId){
		this.regionId = regionId;
	}
	public Integer getRegionId(){
		return this.regionId;
	}
	public void setAddress(String address){
		this.address = address;
	}
	public String getAddress(){
		return this.address;
	}
	public void setTel(String tel){
		this.tel = tel;
	}
	public String getTel(){
		return this.tel;
	}
	public void setEmail(String email){
		this.email = email;
	}
	public String getEmail(){
		return this.email;
	}
	public void setCreateDate(Date createDate){
		this.createDate = createDate;
	}
	public Date getCreateDate(){
		return this.createDate;
	}
	public void setImagePath(String imagePath){
		this.imagePath = imagePath;
	}
	public String getImagePath(){
		return this.imagePath;
	}

}