package fsf.action.sys.user;

import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import net.jforum.util.MD5;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import chance.base.BaseParameter;
import chance.base.action.UploadBaseAction;
import chance.common.PageView;
import chance.common.QueryResult;
import fsf.beans.est.estateout.EstateOut;
import fsf.beans.sys.dict.DictItem;
import fsf.beans.sys.user.User;
import fsf.service.sys.user.UserService;
import fsf.web.common.ThreadUser;
import fsf.web.common.WebConstant;

@Controller
@Scope("prototype")
public class UserAction extends UploadBaseAction<User> {

	public UserAction() {
		super(User.class, new String[] { "userId" },"user");
	}
	
	private List<EstateOut> rentRecommond;
	
	private List<EstateOut> salesRecommond;
	
	/**
	 * 顾问内页推荐
	 * @return
	 */
	public String ajaxQueryRecommond(){
		rentRecommond = getUserService().queryRecommond(userId, 1);
		salesRecommond = getUserService().queryRecommond(userId, 2);
		return SUCCESS;
	}
	
	@Override
	public String doList() throws Exception {
		
		try {
			if(baseParameter==null){
				return SUCCESS;
			}
			if(baseParameter.getMaxResults()==null){
				baseParameter.setMaxResults(10);
			}
			if(baseParameter.getCurrentPage()==null){
				baseParameter.setCurrentPage(1);
			}
			User u = ThreadUser.get();
			UserParameter param = (UserParameter)baseParameter;
			//超级管理员只能搜管理员、顾问和普通用户
			if(u.getUserType()==0){
				if(param.get_ne_userType()==null){
					param.set_nin_userType(new Short[]{1,2,3});
				}
			}
			//管理员只能搜顾问和普通用户
			else if(u.getUserType()==1){
				if(param.get_ne_userType()==null){
					param.set_nin_userType(new Short[]{2,3});
				}
			}
			QueryResult<User> queryResult = service.doPaginationQuery(baseParameter);
			setPageView(new PageView<User>(baseParameter.getMaxResults(),baseParameter.getCurrentPage()));
			getPageView().setQueryResult(queryResult);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		return SUCCESS;
	}

	/**
	 * 顾问首页
	 * @return
	 * @throws Exception
	 */
	public String doExportList()throws Exception{
		try {
			if(baseParameter==null){
				baseParameter = new UserParameter();
			}
			baseParameter.setMaxResults(4);
			if(baseParameter.getCurrentPage()==null){
				baseParameter.setCurrentPage(1);
			}
			UserParameter param = (UserParameter)baseParameter;
			param.set_ne_status((short)1);
			param.set_ne_userType((short)2);
			param.getSortedConditions().put("level", BaseParameter.SORTED_ASC);
			QueryResult<User> queryResult = service.doPaginationQuery(baseParameter);
			setPageView(new PageView<User>(baseParameter.getMaxResults(),baseParameter.getCurrentPage()));
			getPageView().setQueryResult(queryResult);
			List<User> list = getPageView().getRecords();
			if(list!=null && list.size()>0)
				for(Iterator<User> it = list.iterator();it.hasNext();){
					User u = it.next();
					Integer userId = u.getUserId();
					u.setRecommondEstate(getUserService().queryRecommondIndex(userId));
				}
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		return SUCCESS;
	}
	
	/**
	 * 修改密码
	 * @return
	 * @throws Exception
	 */
	public String doUpdatePassword()throws Exception{
		User user = service.get(userId);
		if(password!=null&&!"".equals(password)&&MD5.crypt(password).equals(user.getPassword())){
			if(newPassword!=null&&!"".equals(newPassword)){
				user.setPassword(MD5.crypt(newPassword));
				service.update(user);
				addActionMessage(getText("updatePasswordSuccess"));
			}else{
				addActionMessage(getText("passwordError"));
			}
		}else{
			addActionMessage(getText("newPasswordError"));
		}
		return SUCCESS;
	}
	
	/**
	 * 前台登录
	 * @return
	 * @throws Exception
	 */
	public String doFrontLogin()throws Exception{
		User user = service.getByProerty("userCode",userCode);
		if(user==null){
			getHttpServletResponse().getWriter().write("{message:2}");
		}else{
			if(user.getStatus()==(short)0){
				getHttpServletResponse().getWriter().write("{message:4}");
			}else if(password!=null&&!"".equals(password)&&MD5.crypt(password).equals(user.getPassword())){
				getHttpSession().setAttribute(WebConstant.SESSION_USER, user);
				getHttpServletResponse().getWriter().write("{message:1}");	
			}else {
				getHttpServletResponse().getWriter().write("{message:3}");
			}
		}
		return null;
	}
	
	public String toMemberCenter()throws Exception{
		
		return SUCCESS;
	}
	
	public String toRegister(){
		return SUCCESS;
	}
	
	/**
	 * 注册
	 * @return
	 * @throws Exception
	 */
	public String register()throws Exception{
		if(validateCode!=null&&!"".equals(validateCode)&&
				validateCode.equals((String)getHttpSession().getAttribute(WebConstant.VALIDATECODE))){
			if(service.getByProerty("userCode", userCode)!=null){
				getHttpServletResponse().getWriter().write("{message:3}");
				return null;
			}
			User u = new User();
			beforePersist();
			userType = (short)3;
			BeanUtils.copyProperties(u, this);
			u.setPassword(MD5.crypt(u.getPassword()));
			service.persist(u);
			getHttpServletResponse().getWriter().write("{message:1}");
			getHttpSession().setAttribute(WebConstant.SESSION_USER, u);
		}else{
			addFieldError("validateCode", getText("g_validateCodeError"));
			getHttpServletResponse().getWriter().write("{message:2}");
		}
		return null;
	}
	
	public String doLogin() throws Exception {
		try{
			User user = getUserService().login(userCode, MD5.crypt(password));
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
	public String doSave() throws Exception {
		password = MD5.crypt(password);
		return super.doSave();
	}
	
	@Override
	protected void initData() {	}
	@Override
	protected void beforePersist() {
		createDate = new Date();
		status = (short)1;
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
	
	private String validateCode;
	private String newPassword;

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

	public String getValidateCode() {
		return validateCode;
	}

	public void setValidateCode(String validateCode) {
		this.validateCode = validateCode;
	}

	public String getNewPassword() {
		return newPassword;
	}

	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}

	public List<EstateOut> getRentRecommond() {
		return rentRecommond;
	}

	public void setRentRecommond(List<EstateOut> rentRecommond) {
		this.rentRecommond = rentRecommond;
	}

	public List<EstateOut> getSalesRecommond() {
		return salesRecommond;
	}

	public void setSalesRecommond(List<EstateOut> salesRecommond) {
		this.salesRecommond = salesRecommond;
	}
}