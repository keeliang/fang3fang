package fsf.action.est.commerce;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import net.jforum.util.MD5;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.PropertyUtils;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import chance.base.BaseParameter;
import chance.base.action.UploadBaseAction;
import chance.common.PageView;
import fsf.beans.est.commerce.Commerce;
import fsf.beans.sys.dict.DictItem;
import fsf.beans.sys.user.User;
import fsf.service.est.commerce.CommerceService;
import fsf.service.sys.user.UserService;
import fsf.web.common.ThreadUser;
import fsf.web.common.WebConstant;

@Controller
@Scope("prototype")
public class CommerceAction extends UploadBaseAction<Commerce> {

	private static final long serialVersionUID = 4817958598506277718L;
	
	public CommerceAction() {
		super(Commerce.class, new String[] { "commerceId" },"commerce");
	}
	@Resource
	private UserService userService;
	
//	List<Commerce> factoryList;
//	List<Commerce> officeList;
//	List<Commerce> restaurantList;
//	List<Commerce> commerceList;
//	List<Commerce> salonList;
//	List<Commerce> hourseList;
//	List<Commerce> lastestList;
	
	/**
	 * 保存发布
	 * @return
	 * @throws Exception
	 */
	public String doReleaseSave()throws Exception{
		Commerce commerce = new Commerce();
		BeanUtils.copyProperties(commerce, this);
		commerce.setStatus((short)1);
		Date d = new Date();
		commerce.setCreateTime(d);
		commerce.setUpdateTime(d);
		contactUser.setCreateDate(d);
		contactUser.setUserCode(contactUser.getPhone());
		contactUser.setPassword(MD5.crypt(contactUser.getPassword()));
		try {
			getCommerceService().doReleaseSave(commerce,contactUser );
			getHttpSession().setAttribute(WebConstant.SESSION_USER,contactUser );
		} catch (Exception e) {
			handleDefaultException(e);
		}
		return SUCCESS;
	}
	
    public String indexList() throws Exception{
    	try {
    		if(baseParameter==null){
    			baseParameter = new CommerceParameter();
    		}
//    		baseParameter.setTopCount(10);
//    		baseParameter.setMaxResults(-1);
//    		baseParameter.setCurrentPage(-1);
//    		baseParameter.getSortedConditions().put("createTime", BaseParameter.SORTED_DESC);
//    		((CommerceParameter)baseParameter).set_ne_status((short)1);
//	
//			//1 - 厂房仓库   3 - 写字楼4 - 餐厅转让 5 - 商铺 7 - 美容发廊 8 - 房租转让
//
//			//厂房仓库
//    		((CommerceParameter)baseParameter).set_ne_commerceType(1);
//			factoryList = service.doQuery(baseParameter);
//			//写字楼
//			((CommerceParameter)baseParameter).set_ne_commerceType(3);
//			officeList = service.doQuery(baseParameter);
//			//餐厅转让
//			((CommerceParameter)baseParameter).set_ne_commerceType(4);
//			restaurantList = service.doQuery(baseParameter);
//			//商铺
//			((CommerceParameter)baseParameter).set_ne_commerceType(5);
//			commerceList = service.doQuery(baseParameter);
//			//美容发廊
//			((CommerceParameter)baseParameter).set_ne_commerceType(7);
//			salonList = service.doQuery(baseParameter);
//			//房租转让
//			((CommerceParameter)baseParameter).set_ne_commerceType(8);
//			hourseList = service.doQuery(baseParameter);
			
			//最新旺铺信息
			
			baseParameter.setMaxResults(30);
			if(baseParameter.getCurrentPage()==null){
				baseParameter.setCurrentPage(1);	
			}
			((CommerceParameter)baseParameter).set_ne_status((short)1);
			baseParameter.getSortedConditions().put("createTime", BaseParameter.SORTED_DESC);
			setPageView(new PageView<Commerce>(baseParameter.getMaxResults(),baseParameter.getCurrentPage()));
			getPageView().setQueryResult(service.doPaginationQuery(baseParameter));
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
    	return SUCCESS;
    }
    
    public String doRelease()throws Exception{
		if(getHttpSession().getAttribute(WebConstant.SESSION_USER)==null){
			return SUCCESS;
		}
		return "success2";
	}
    
    public String commerceCatelory() throws Exception{
    	return doList();
    }
    
    public String commerceView()throws Exception{
    	return doEdit();
    }
    
    @Override
	public String doEdit() throws Exception {
		if(!CMD_SELECT.equals(getCmd())){
			setCmd(CMD_EDIT);
		}
		Commerce entity = null;
		try{
			Object pk = PropertyUtils.getNestedProperty(this, pkArray[0]);
			entity = service.get((Serializable)pk);
			restoreContent(entity);
			if(entity!=null && entity.getCreateUserId()!=null){
				contactUser = userService.get(entity.getCreateUserId());
			}
		}catch (Exception e) {
			handleEditException(e);
		}
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
	
	public String getBusinessareaList() throws Exception {
		BaseParameter param = new BaseParameter();
		param.getQueryDynamicConditions().put("_ne_province_id", provinceId);
		param.getQueryDynamicConditions().put("_ne_city_id", cityId);
		param.getQueryDynamicConditions().put("_ne_district_id", districtId);
		List<DictItem> list = dictItemService.getDaynamicConfig("est_businessarea","area_id","area_name",param);
		JSONObject json = new JSONObject();
		json.put("data", JSONArray.fromObject(list));
		getHttpServletResponse().setCharacterEncoding("UTF-8");
		getHttpServletResponse().getWriter().write(json.toString());
		return null;
	}
	
	@Override
	protected void initData() {
		User u = ThreadUser.get();
		if(u!=null){
			createUserId = u.getUserId();
			updateUserId = u.getUserId();
		}
		Date today = new Date();
		createTime = today;
		updateTime = today;
		ip = getHttpServletRequest().getRemoteAddr();
		status = 1;
	}
	
	@Resource
	public void setCommerceService(CommerceService commerceService){
		this.service = commerceService;
	}
	
	public CommerceService getCommerceService(){
		return (CommerceService)this.service;
	}

	public void setCommerceParameter(CommerceParameter param){
		this.baseParameter = param;
	}
	
	public CommerceParameter getCommerceParameter(){
		return (CommerceParameter)baseParameter;
	}
	
	private Integer commerceId;
	private String title;
	private String content;
	private Integer provinceId;
	private Integer cityId;
	private Integer districtId;
	private Integer areaId;
	private Integer commerceType;
	private Short status;
	private String ip;
	private Date createTime;
	private Integer createUserId;
	private Date updateTime;
	private Integer updateUserId;
	private String address;
	private String imagePath;
	private User contactUser;
	

	public void setCommerceId(Integer commerceId){
		this.commerceId = commerceId;
	}
	public Integer getCommerceId(){
		return this.commerceId;
	}
	public void setTitle(String title){
		this.title = title;
	}
	public String getTitle(){
		return this.title;
	}
	public void setContent(String content){
		this.content = content;
	}
	public String getContent(){
		return this.content;
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
	public void setAreaId(Integer areaId){
		this.areaId = areaId;
	}
	public Integer getAreaId(){
		return this.areaId;
	}
	public void setCommerceType(Integer commerceType){
		this.commerceType = commerceType;
	}
	public Integer getCommerceType(){
		return this.commerceType;
	}
	public void setStatus(Short status){
		this.status = status;
	}
	public Short getStatus(){
		return this.status;
	}
	public void setIp(String ip){
		this.ip = ip;
	}
	public String getIp(){
		return this.ip;
	}
	public void setCreateTime(Date createTime){
		this.createTime = createTime;
	}
	public Date getCreateTime(){
		return this.createTime;
	}
	public void setCreateUserId(Integer createUserId){
		this.createUserId = createUserId;
	}
	public Integer getCreateUserId(){
		return this.createUserId;
	}
	public void setUpdateTime(Date updateTime){
		this.updateTime = updateTime;
	}
	public Date getUpdateTime(){
		return this.updateTime;
	}
	public void setUpdateUserId(Integer updateUserId){
		this.updateUserId = updateUserId;
	}
	public Integer getUpdateUserId(){
		return this.updateUserId;
	}

//	public List<Commerce> getFactoryList() {
//		return factoryList;
//	}
//
//	public List<Commerce> getOfficeList() {
//		return officeList;
//	}
//
//	public List<Commerce> getRestaurantList() {
//		return restaurantList;
//	}
//
//	public List<Commerce> getCommerceList() {
//		return commerceList;
//	}
//
//	public List<Commerce> getSalonList() {
//		return salonList;
//	}
//
//	public List<Commerce> getHourseList() {
//		return hourseList;
//	}
//
//	public List<Commerce> getLastestList() {
//		return lastestList;
//	}
//
//	public void setLastestList(List<Commerce> lastestList) {
//		this.lastestList = lastestList;
//	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	public User getContactUser() {
		return contactUser;
	}

	public void setContactUser(User contactUser) {
		this.contactUser = contactUser;
	}
	

}