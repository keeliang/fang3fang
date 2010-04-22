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
	private String question;
	private String answer;
	private String userName;
	private Short sex;
	private Short status;
	private Short userType;
	private Integer provinceId;
	private Integer cityId;
	private Integer districtId;
	private String address;
	private String tel;
	private String phone;
	private String qq;
	private String msn;
	private String email;
	private String remark;
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
	public void setQuestion(String question){
		this.question = question;
	}
	public String getQuestion(){
		return this.question;
	}
	public void setAnswer(String answer){
		this.answer = answer;
	}
	public String getAnswer(){
		return this.answer;
	}
	public void setUserName(String userName){
		this.userName = userName;
	}
	public String getUserName(){
		return this.userName;
	}
	public void setSex(Short sex){
		this.sex = sex;
	}
	public Short getSex(){
		return this.sex;
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
	public void setDistrictId(Integer districtId){
		this.districtId = districtId;
	}
	public Integer getDistrictId(){
		return this.districtId;
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
	public void setPhone(String phone){
		this.phone = phone;
	}
	public String getPhone(){
		return this.phone;
	}
	public void setQq(String qq){
		this.qq = qq;
	}
	public String getQq(){
		return this.qq;
	}
	public void setMsn(String msn){
		this.msn = msn;
	}
	public String getMsn(){
		return this.msn;
	}
	public void setEmail(String email){
		this.email = email;
	}
	public String getEmail(){
		return this.email;
	}
	public void setRemark(String remark){
		this.remark = remark;
	}
	public String getRemark(){
		return this.remark;
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