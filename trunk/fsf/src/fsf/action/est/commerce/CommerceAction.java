package fsf.action.est.commerce;

import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import chance.base.BaseParameter;
import chance.base.action.BaseAction;

import fsf.beans.est.commerce.Commerce;
import fsf.beans.sys.dict.DictItem;
import fsf.beans.sys.user.User;
import fsf.service.est.commerce.CommerceService;
import fsf.web.common.ThreadUser;

@Controller
@Scope("prototype")
public class CommerceAction extends BaseAction<Commerce> implements ServletRequestAware{

	private static final long serialVersionUID = 4817958598506277718L;
	
	public CommerceAction() {
		super(Commerce.class, new String[] { "commerceId" });
	}
	
	private HttpServletRequest request;
	private CommerceParameter commerceParameter;
	List<Commerce> factoryList;
	List<Commerce> officeList;
	List<Commerce> restaurantList;
	List<Commerce> commerceList;
	List<Commerce> salonList;
	List<Commerce> hourseList;
	List<Commerce> lastestList;
	
    public void setServletRequest(HttpServletRequest request){
    	this.request = request;
    }
    
    public String indexList() throws Exception{
    	try {
    		setCommerceParameter(new CommerceParameter());
    		commerceParameter.setTopCount(10);
    		Map<String, String> sortedConditions = new LinkedHashMap<String, String>();
			sortedConditions.put("updateTime", BaseParameter.SORTED_DESC);
			commerceParameter.setSortedConditions(sortedConditions);
			if(baseParameter==null){
				return SUCCESS;
			}
			//1 - 厂房仓库   3 - 写字楼4 - 餐厅转让 5 - 商铺 7 - 美容发廊 8 - 房租转让

			//厂房仓库
			commerceParameter.set_ne_commerceType(1);
			factoryList = service.doQuery(commerceParameter);
			//写字楼
			commerceParameter.set_ne_commerceType(3);
			officeList = service.doQuery(commerceParameter);
			//餐厅转让
			commerceParameter.set_ne_commerceType(4);
			restaurantList = service.doQuery(commerceParameter);
			//商铺
			commerceParameter.set_ne_commerceType(5);
			commerceList = service.doQuery(commerceParameter);
			//美容发廊
			commerceParameter.set_ne_commerceType(7);
			salonList = service.doQuery(commerceParameter);
			//房租转让
			commerceParameter.set_ne_commerceType(8);
			hourseList = service.doQuery(commerceParameter);
			
			//最新旺铺信息
			setCommerceParameter(new CommerceParameter());
			baseParameter.setTopCount(30);
			sortedConditions = new LinkedHashMap<String, String>();
			sortedConditions.put("updateTime", BaseParameter.SORTED_DESC);
			baseParameter.setSortedConditions(sortedConditions);
    		lastestList = service.doQuery(baseParameter);
			
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
    	
    	return SUCCESS;
    }
    
    public String commerceCatelory() throws Exception{
    	//设置参数
    	commerceParameter = new CommerceParameter();
    	commerceParameter.set_ne_commerceType(commerceType);
    	setCommerceParameter(commerceParameter);
    	//排序
    	Map<String, String> sortedConditions = new LinkedHashMap<String, String>();
		sortedConditions.put("updateTime", BaseParameter.SORTED_DESC);
		baseParameter.setSortedConditions(sortedConditions);
    	//查询数据
    	doList();
    	return SUCCESS;
    }
    
    public String commerceView()throws Exception{
    	Commerce commerce = (Commerce)service.get(commerceId);
    	if(commerce!=null){
    		commerce.setVisitCount(commerce.getVisitCount() + 1);
    		service.update(commerce);
    	}
    	doEdit();
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
		/*for test start*/
		if(u==null){
			u = new User();
			u.setUserId(1);
			u.setPhone("84678526");
			u.setUserName("李生");
		}
		/*for test end*/
		Date today = new Date();
		
		ip = request.getRemoteAddr();
		createUserId = u.getUserId();
		updateUserId = u.getUserId();
		createTime = today;
		updateTime = today;
		visitCount = 0;
		status = 1;
		contacter = u.getUserName();
		contactTel = u.getPhone();
		
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
		this.commerceParameter = param;
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
	/*
	 * 联系人
	 */
	private String contacter;
	/*
	 * 联系电话
	 */
	private String contactTel;
	/*
	 * 浏览次数
	 */
	private Integer visitCount;

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

	public List<Commerce> getFactoryList() {
		return factoryList;
	}

	public List<Commerce> getOfficeList() {
		return officeList;
	}

	public List<Commerce> getRestaurantList() {
		return restaurantList;
	}

	public List<Commerce> getCommerceList() {
		return commerceList;
	}

	public List<Commerce> getSalonList() {
		return salonList;
	}

	public List<Commerce> getHourseList() {
		return hourseList;
	}

	public List<Commerce> getLastestList() {
		return lastestList;
	}

	public void setLastestList(List<Commerce> lastestList) {
		this.lastestList = lastestList;
	}

	public Integer getVisitCount() {
		return visitCount;
	}

	public void setVisitCount(Integer visitCount) {
		this.visitCount = visitCount;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getContacter() {
		return contacter;
	}

	public void setContacter(String contacter) {
		this.contacter = contacter;
	}

	public String getContactTel() {
		return contactTel;
	}

	public void setContactTel(String contactTel) {
		this.contactTel = contactTel;
	}

}