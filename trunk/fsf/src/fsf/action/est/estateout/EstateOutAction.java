package fsf.action.est.estateout;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import fsf.beans.est.estateout.EstateOut;
import chance.base.action.BaseAction;
import chance.base.BaseParameter;
import fsf.service.est.estateout.EstateOutService;

@Controller
@Scope("prototype")
public class EstateOutAction extends BaseAction<EstateOut> {
	
	public EstateOutAction() {
		super(EstateOut.class, new String[] { "estateId" });
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
	private Short tradeMode;
	private Short estateType;
	private Float area;
	private Short isLift;
	private Float practicalArea;
	private Integer effective;
	private String estateAddress;
	private Integer toward;
	private Integer floor;
	private Integer totalFloor;
	private Float salePrice;
	private Float rentPrice;
	private Integer hall;
	private Integer bedroom;
	private Integer toilet;
	private Integer porch;
	private Float manageCost;
	private Float waterCost;
	private Float electricCost;
	private Float otherCost;
	private Integer buildYear;
	private Integer minMonth;
	private Float deposit;
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
	public void setEstateAddress(String estateAddress){
		this.estateAddress = estateAddress;
	}
	public String getEstateAddress(){
		return this.estateAddress;
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
	public void setSalePrice(Float salePrice){
		this.salePrice = salePrice;
	}
	public Float getSalePrice(){
		return this.salePrice;
	}
	public void setRentPrice(Float rentPrice){
		this.rentPrice = rentPrice;
	}
	public Float getRentPrice(){
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
	public void setManageCost(Float manageCost){
		this.manageCost = manageCost;
	}
	public Float getManageCost(){
		return this.manageCost;
	}
	public void setWaterCost(Float waterCost){
		this.waterCost = waterCost;
	}
	public Float getWaterCost(){
		return this.waterCost;
	}
	public void setElectricCost(Float electricCost){
		this.electricCost = electricCost;
	}
	public Float getElectricCost(){
		return this.electricCost;
	}
	public void setOtherCost(Float otherCost){
		this.otherCost = otherCost;
	}
	public Float getOtherCost(){
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
	public void setDeposit(Float deposit){
		this.deposit = deposit;
	}
	public Float getDeposit(){
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

}