package fsf.action.est.commerce;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import chance.base.BaseParameter;
import chance.base.action.BaseAction;
import chance.common.PageView;
import chance.common.QueryResult;

import com.opensymphony.xwork2.ActionContext;

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
	
    public void setServletRequest(HttpServletRequest request){
    	this.request = request;
    }
    
    public String indexList() throws Exception{
    	try {
    		setCommerceParameter(new CommerceParameter());
			if(baseParameter==null){
				return SUCCESS;
			}
			//1 - 厂房仓库   3 - 写字楼4 - 餐厅转让 5 - 商铺 7 - 美容发廊 8 - 房租转让

			//厂房仓库
			commerceParameter.set_ne_commerceType(1);
			factoryList = service.doQuery(baseParameter);
			//写字楼
			commerceParameter.set_ne_commerceType(3);
			officeList = service.doQuery(baseParameter);
			//餐厅转让
			commerceParameter.set_ne_commerceType(4);
			restaurantList = service.doQuery(baseParameter);
			//商铺
			commerceParameter.set_ne_commerceType(5);
			commerceList = service.doQuery(baseParameter);
			//美容发廊
			commerceParameter.set_ne_commerceType(7);
			salonList = service.doQuery(baseParameter);
			//房租转让
			commerceParameter.set_ne_commerceType(8);
			hourseList = service.doQuery(baseParameter);
			
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
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
		/*for test start*/
		if(u==null){
			u = new User();
			u.setUserId(1);
		}
		/*for test end*/
		Date today = new Date();
		
		ip = request.getRemoteAddr();
		createUserId = u.getUserId();
		updateUserId = u.getUserId();
		createTime = today;
		updateTime = today;
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

}