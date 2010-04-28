package fsf.action.sys.user;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import chance.base.BaseParameter;
import chance.base.action.BaseAction;
import fsf.beans.sys.dict.DictItem;
import fsf.beans.sys.user.User;
import fsf.service.sys.user.UserService;
import fsf.web.common.WebConstant;

@Controller
@Scope("prototype")
public class UserAction extends BaseAction<User> {

	public UserAction() {
		super(User.class, new String[] { "userId" });
	}
	
	public String doLogin() throws Exception {
		try{
			User user = getUserService().login(userCode, password);
			getHttpSession().setAttribute(WebConstant.SESSION_USER, user);
		}catch(Exception e){
			handleDefaultException(e);
			return INPUT;
		}
		return SUCCESS;
	}
	
	public String doLogout() throws Exception{ 
		getHttpSession().invalidate();
		return SUCCESS;
	}
	
	public String getCityList() throws Exception {
		BaseParameter param = new BaseParameter();
		param.getQueryDynamicConditions().put("_ne_province_id", provinceId);
		List<DictItem> list = dictItemService.getDaynamicConfig("sys_city","city_id","city_name",param);
		JSONObject json = new JSONObject();
		json.put("data", JSONArray.fromObject(list));
		getHttpServletResponse().setCharacterEncoding("UTF-8");
		getHttpServletResponse().getWriter().write(json.toString());
		return null;
	}
	
	public String getDistrictList() throws Exception {
		BaseParameter param = new BaseParameter();
		param.getQueryDynamicConditions().put("_ne_province_id", provinceId);
		param.getQueryDynamicConditions().put("_ne_city_id", cityId);
		List<DictItem> list = dictItemService.getDaynamicConfig("sys_district","district_id","district_name",param);
		JSONObject json = new JSONObject();
		json.put("data", JSONArray.fromObject(list));
		getHttpServletResponse().setCharacterEncoding("UTF-8");
		getHttpServletResponse().getWriter().write(json.toString());
		return null;
	}
	
	@Override
	protected void initData() {	}
	@Override
	protected void beforePersist() {
		
		createDate = new Date();
	}

	@Resource
	public void setUserService(UserService userService) {
		this.service = userService;
	}
	
	public UserService getUserService(){
		return (UserService)service;
	}

	public void setUserParameter(UserParameter param) {
		this.baseParameter = param;
	}

	public UserParameter getUserParameter() {
		return (UserParameter) baseParameter;
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
	private String realName;
	private Integer workProvinceId;
	private Integer workCityId;
	private Integer workDistrictId;
	private String company;
	private String level;
	private String license;
	private String hobby;
	private String glory;

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getUserId() {
		return this.userId;
	}

	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}

	public String getUserCode() {
		return this.userCode;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPassword() {
		return this.password;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getQuestion() {
		return this.question;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public String getAnswer() {
		return this.answer;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setSex(Short sex) {
		this.sex = sex;
	}

	public Short getSex() {
		return this.sex;
	}

	public void setStatus(Short status) {
		this.status = status;
	}

	public Short getStatus() {
		return this.status;
	}

	public void setUserType(Short userType) {
		this.userType = userType;
	}

	public Short getUserType() {
		return this.userType;
	}

	public void setProvinceId(Integer provinceId) {
		this.provinceId = provinceId;
	}

	public Integer getProvinceId() {
		return this.provinceId;
	}

	public void setCityId(Integer cityId) {
		this.cityId = cityId;
	}

	public Integer getCityId() {
		return this.cityId;
	}

	public void setDistrictId(Integer districtId) {
		this.districtId = districtId;
	}

	public Integer getDistrictId() {
		return this.districtId;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAddress() {
		return this.address;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getTel() {
		return this.tel;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}

	public String getQq() {
		return this.qq;
	}

	public void setMsn(String msn) {
		this.msn = msn;
	}

	public String getMsn() {
		return this.msn;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEmail() {
		return this.email;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Date getCreateDate() {
		return this.createDate;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	public String getImagePath() {
		return this.imagePath;
	}

	public String getRealName() {
		return realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public Integer getWorkProvinceId() {
		return workProvinceId;
	}

	public void setWorkProvinceId(Integer workProvinceId) {
		this.workProvinceId = workProvinceId;
	}

	public Integer getWorkCityId() {
		return workCityId;
	}

	public void setWorkCityId(Integer workCityId) {
		this.workCityId = workCityId;
	}

	public Integer getWorkDistrictId() {
		return workDistrictId;
	}

	public void setWorkDistrictId(Integer workDistrictId) {
		this.workDistrictId = workDistrictId;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	public String getLicense() {
		return license;
	}

	public void setLicense(String license) {
		this.license = license;
	}

	public String getHobby() {
		return hobby;
	}

	public void setHobby(String hobby) {
		this.hobby = hobby;
	}

	public String getGlory() {
		return glory;
	}

	public void setGlory(String glory) {
		this.glory = glory;
	}

}