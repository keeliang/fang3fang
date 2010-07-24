package fsf.action.est.newestate;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import chance.base.BaseParameter;
import chance.base.action.UploadBaseAction;
import fsf.beans.est.newestate.NewEstate;
import fsf.beans.sys.dict.DictItem;
import fsf.beans.sys.user.User;
import fsf.service.est.newestate.NewEstateService;
import fsf.service.sys.dict.DictItemService;
import fsf.web.common.ThreadUser;

@Controller
@Scope("prototype")
public class NewEstateAction extends UploadBaseAction<NewEstate> {
	
	public NewEstateAction() {
		super(NewEstate.class, new String[] { "estateId" },"newEstate");
	}
	@Resource
	private DictItemService dictItemService;
	
	private String flag = "new";
	
	@Override
	protected void initData() {
		User u = ThreadUser.get();
		Date d = new Date();
		createUserId = u.getUserId();
		createTime = d;
		updateUserId = u.getUserId();
		updateTime = d;
	}
	@Override
	protected void beforePersist() {
		User u = ThreadUser.get();
		createUserId = u.getUserId();
		Date d = new Date();
		createTime = d;
		updateUserId = u.getUserId();
		updateTime = d;
	}
	@Override
	protected void beforeUpdate() {
		User u = ThreadUser.get();
		updateUserId = u.getUserId();
		updateTime = new Date();
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
	
	@Resource
	public void setNewEstateService(NewEstateService newEstateService){
		this.service = newEstateService;
	}
	
	public NewEstateService getNewEstateService(){
		return (NewEstateService)this.service;
	}

	public void setNewEstateParameter(NewEstateParameter param){
		this.baseParameter = param;
	}
	public NewEstateParameter getNewEstateParameter(){
		return (NewEstateParameter)baseParameter;
	}
	
	private Integer estateId;
	private String estateName;
	private String develop;
	private Integer provinceId;
	private Integer cityId;
	private Integer districtId;
	private Integer areaId;
	private String address;
	private Short status;
	private Short isHot;
	private Short estateType;
	private Float area;
	private Short isLift;
	private Float practicalArea;
	private Integer effective;
	private Integer toward;
	private Integer totalFloor;
	private Float price;
	private Integer hall;
	private Integer bedroom;
	private Integer toilet;
	private Integer porch;
	private Float manageCost;
	private Float otherCost;
	private Short fitment;
	private String remark;
	private String imagePath;
	private Date createTime;
	private Integer createUserId;
	private Date updateTime;
	private Integer updateUserId;

	public void setEstateId(Integer estateId){
		this.estateId = estateId;
	}
	public Integer getEstateId(){
		return this.estateId;
	}
	public void setEstateName(String estateName){
		this.estateName = estateName;
	}
	public String getEstateName(){
		return this.estateName;
	}
	public void setDevelop(String develop){
		this.develop = develop;
	}
	public String getDevelop(){
		return this.develop;
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
	public void setAddress(String address){
		this.address = address;
	}
	public String getAddress(){
		return this.address;
	}
	public void setStatus(Short status){
		this.status = status;
	}
	public Short getStatus(){
		return this.status;
	}
	public void setIsHot(Short isHot){
		this.isHot = isHot;
	}
	public Short getIsHot(){
		return this.isHot;
	}
	public void setEstateType(Short estateType){
		this.estateType = estateType;
	}
	public Short getEstateType(){
		return this.estateType;
	}
	public void setArea(Float area){
		this.area = area;
	}
	public Float getArea(){
		return this.area;
	}
	public void setIsLift(Short isLift){
		this.isLift = isLift;
	}
	public Short getIsLift(){
		return this.isLift;
	}
	public void setPracticalArea(Float practicalArea){
		this.practicalArea = practicalArea;
	}
	public Float getPracticalArea(){
		return this.practicalArea;
	}
	public void setEffective(Integer effective){
		this.effective = effective;
	}
	public Integer getEffective(){
		return this.effective;
	}
	public void setToward(Integer toward){
		this.toward = toward;
	}
	public Integer getToward(){
		return this.toward;
	}
	public void setTotalFloor(Integer totalFloor){
		this.totalFloor = totalFloor;
	}
	public Integer getTotalFloor(){
		return this.totalFloor;
	}
	public void setPrice(Float price){
		this.price = price;
	}
	public Float getPrice(){
		return this.price;
	}
	public void setHall(Integer hall){
		this.hall = hall;
	}
	public Integer getHall(){
		return this.hall;
	}
	public void setBedroom(Integer bedroom){
		this.bedroom = bedroom;
	}
	public Integer getBedroom(){
		return this.bedroom;
	}
	public void setToilet(Integer toilet){
		this.toilet = toilet;
	}
	public Integer getToilet(){
		return this.toilet;
	}
	public void setPorch(Integer porch){
		this.porch = porch;
	}
	public Integer getPorch(){
		return this.porch;
	}
	public void setManageCost(Float manageCost){
		this.manageCost = manageCost;
	}
	public Float getManageCost(){
		return this.manageCost;
	}
	public void setOtherCost(Float otherCost){
		this.otherCost = otherCost;
	}
	public Float getOtherCost(){
		return this.otherCost;
	}
	public void setFitment(Short fitment){
		this.fitment = fitment;
	}
	public Short getFitment(){
		return this.fitment;
	}
	public void setRemark(String remark){
		this.remark = remark;
	}
	public String getRemark(){
		return this.remark;
	}
	public void setImagePath(String imagePath){
		this.imagePath = imagePath;
	}
	public String getImagePath(){
		return this.imagePath;
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
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}

}