package fsf.action.est.estateout;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import chance.base.BaseParameter;
import chance.base.action.BaseAction;
import fsf.beans.est.estateout.EstateOut;
import fsf.beans.sys.dict.DictItem;
import fsf.beans.sys.user.User;
import fsf.service.est.estateout.EstateOutService;
import fsf.web.common.ThreadUser;

@Controller
@Scope("prototype")
public class EstateOutAction extends BaseAction<EstateOut> {
	
	public EstateOutAction() {
		super(EstateOut.class, new String[] { "estateId" });
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
		contactUserId = u.getUserId();
		Date d = new Date();
		createUserId = u.getUserId();
		createTime = d;
		updateUserId = u.getUserId();
		updateTime = d;
		examine = (short)0;
	}
	@Override
	protected void beforePersist() {
		User u = ThreadUser.get();
		contactUserId = u.getUserId();
		createUserId = u.getUserId();
		Date d = new Date();
		createTime = d;
		updateUserId = u.getUserId();
		updateTime = d;
	}
	@Override
	protected void beforeUpdate() {
		User u = ThreadUser.get();
		contactUserId = u.getUserId();
		updateUserId = u.getUserId();
		updateTime = new Date();
	}
	
	@Resource
	public void setEstateOutService(EstateOutService estateOutService){
		this.service = estateOutService;
	}
	
	public EstateOutService getEstateOutService(){
		return (EstateOutService)this.service;
	}

	public void setEstateOutParameter(EstateOutParameter param){
		this.baseParameter = param;
	}
	public EstateOutParameter getEstateOutParameter(){
		return (EstateOutParameter)baseParameter;
	}
	
	private Integer estateId;
	private String estateCardNo;
	private Short card5year;
	private String estateName;
	private String develop;
	private Short tradeType;
	private Integer contactUserId;
	private Integer provinceId;
	private Integer cityId;
	private Integer districtId;
	private Integer areaId;
	private Short examine;
	private Short tradeMode;
	private Short estateType;
	private Double area;
	private Short isLift;
	private Double practicalArea;
	private Integer effective;
	private String address;
	private Integer toward;
	private Integer floor;
	private Integer totalFloor;
	private Double salePrice;
	private Double rentPrice;
	private Integer hall;
	private Integer bedroom;
	private Integer toilet;
	private Integer porch;
	private Double manageCost;
	private Double waterCost;
	private Double electricCost;
	private Double otherCost;
	private Integer buildYear;
	private Integer minMonth;
	private Double deposit;
	private Short fitment;
	private Short device;
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
	public void setEstateCardNo(String estateCardNo){
		this.estateCardNo = estateCardNo;
	}
	public String getEstateCardNo(){
		return this.estateCardNo;
	}
	public void setCard5year(Short card5year){
		this.card5year = card5year;
	}
	public Short getCard5year(){
		return this.card5year;
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
	public void setTradeType(Short tradeType){
		this.tradeType = tradeType;
	}
	public Short getTradeType(){
		return this.tradeType;
	}
	public void setContactUserId(Integer contactUserId){
		this.contactUserId = contactUserId;
	}
	public Integer getContactUserId(){
		return this.contactUserId;
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
	public void setTradeMode(Short tradeMode){
		this.tradeMode = tradeMode;
	}
	public Short getTradeMode(){
		return this.tradeMode;
	}
	public void setEstateType(Short estateType){
		this.estateType = estateType;
	}
	public Short getEstateType(){
		return this.estateType;
	}
	public void setArea(Double area){
		this.area = area;
	}
	public Double getArea(){
		return this.area;
	}
	public void setIsLift(Short isLift){
		this.isLift = isLift;
	}
	public Short getIsLift(){
		return this.isLift;
	}
	public void setPracticalArea(Double practicalArea){
		this.practicalArea = practicalArea;
	}
	public Double getPracticalArea(){
		return this.practicalArea;
	}
	public void setEffective(Integer effective){
		this.effective = effective;
	}
	public Integer getEffective(){
		return this.effective;
	}
	
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public void setToward(Integer toward){
		this.toward = toward;
	}
	public Integer getToward(){
		return this.toward;
	}
	public void setFloor(Integer floor){
		this.floor = floor;
	}
	public Integer getFloor(){
		return this.floor;
	}
	public void setTotalFloor(Integer totalFloor){
		this.totalFloor = totalFloor;
	}
	public Integer getTotalFloor(){
		return this.totalFloor;
	}
	public void setSalePrice(Double salePrice){
		this.salePrice = salePrice;
	}
	public Double getSalePrice(){
		return this.salePrice;
	}
	public void setRentPrice(Double rentPrice){
		this.rentPrice = rentPrice;
	}
	public Double getRentPrice(){
		return this.rentPrice;
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
	public void setManageCost(Double manageCost){
		this.manageCost = manageCost;
	}
	public Double getManageCost(){
		return this.manageCost;
	}
	public void setWaterCost(Double waterCost){
		this.waterCost = waterCost;
	}
	public Double getWaterCost(){
		return this.waterCost;
	}
	public void setElectricCost(Double electricCost){
		this.electricCost = electricCost;
	}
	public Double getElectricCost(){
		return this.electricCost;
	}
	public void setOtherCost(Double otherCost){
		this.otherCost = otherCost;
	}
	public Double getOtherCost(){
		return this.otherCost;
	}
	public void setBuildYear(Integer buildYear){
		this.buildYear = buildYear;
	}
	public Integer getBuildYear(){
		return this.buildYear;
	}
	public void setMinMonth(Integer minMonth){
		this.minMonth = minMonth;
	}
	public Integer getMinMonth(){
		return this.minMonth;
	}
	public void setDeposit(Double deposit){
		this.deposit = deposit;
	}
	public Double getDeposit(){
		return this.deposit;
	}
	public void setFitment(Short fitment){
		this.fitment = fitment;
	}
	public Short getFitment(){
		return this.fitment;
	}
	public void setDevice(Short device){
		this.device = device;
	}
	public Short getDevice(){
		return this.device;
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

	public Short getExamine() {
		return examine;
	}

	public void setExamine(Short examine) {
		this.examine = examine;
	}

}