package fsf.beans.est.estateout;

// default package
// Generated 2010-4-22 21:00:06 by Hibernate Tools 3.2.4.GA

import java.util.Date;

/**
 * EstEstateOut generated by hbm2java
 */
public class EstateOut implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 483593618875371929L;
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
	private Integer palaceId;
	private Short examine;
	private Integer examineUserId;
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
	private Short isRecommond;
	private String remark;
	private String imagePath;
	private Date createTime;
	private Integer createUserId;
	private Date updateTime;
	private Integer updateUserId;

	public EstateOut() {
	}

	public Integer getEstateId() {
		return this.estateId;
	}

	public void setEstateId(Integer estateId) {
		this.estateId = estateId;
	}

	public String getEstateCardNo() {
		return this.estateCardNo;
	}

	public void setEstateCardNo(String estateCardNo) {
		this.estateCardNo = estateCardNo;
	}

	public Short getCard5year() {
		return this.card5year;
	}

	public void setCard5year(Short card5year) {
		this.card5year = card5year;
	}

	public String getEstateName() {
		return this.estateName;
	}

	public void setEstateName(String estateName) {
		this.estateName = estateName;
	}

	public String getDevelop() {
		return this.develop;
	}

	public void setDevelop(String develop) {
		this.develop = develop;
	}

	public Short getTradeType() {
		return this.tradeType;
	}

	public void setTradeType(Short tradeType) {
		this.tradeType = tradeType;
	}

	public Integer getContactUserId() {
		return this.contactUserId;
	}

	public void setContactUserId(Integer contactUserId) {
		this.contactUserId = contactUserId;
	}

	public Integer getProvinceId() {
		return this.provinceId;
	}

	public void setProvinceId(Integer provinceId) {
		this.provinceId = provinceId;
	}

	public Integer getCityId() {
		return this.cityId;
	}

	public void setCityId(Integer cityId) {
		this.cityId = cityId;
	}

	public Integer getDistrictId() {
		return this.districtId;
	}

	public void setDistrictId(Integer districtId) {
		this.districtId = districtId;
	}

	public Integer getAreaId() {
		return this.areaId;
	}

	public void setAreaId(Integer areaId) {
		this.areaId = areaId;
	}

	public Short getTradeMode() {
		return this.tradeMode;
	}

	public void setTradeMode(Short tradeMode) {
		this.tradeMode = tradeMode;
	}

	public Short getEstateType() {
		return this.estateType;
	}

	public void setEstateType(Short estateType) {
		this.estateType = estateType;
	}

	public Double getArea() {
		return this.area;
	}

	public void setArea(Double area) {
		this.area = area;
	}

	public Short getIsLift() {
		return this.isLift;
	}

	public void setIsLift(Short isLift) {
		this.isLift = isLift;
	}

	public Double getPracticalArea() {
		return this.practicalArea;
	}

	public void setPracticalArea(Double practicalArea) {
		this.practicalArea = practicalArea;
	}

	public Integer getEffective() {
		return this.effective;
	}

	public void setEffective(Integer effective) {
		this.effective = effective;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Integer getToward() {
		return this.toward;
	}

	public void setToward(Integer toward) {
		this.toward = toward;
	}

	public Integer getFloor() {
		return this.floor;
	}

	public void setFloor(Integer floor) {
		this.floor = floor;
	}

	public Integer getTotalFloor() {
		return this.totalFloor;
	}

	public void setTotalFloor(Integer totalFloor) {
		this.totalFloor = totalFloor;
	}

	public Double getSalePrice() {
		return this.salePrice;
	}

	public void setSalePrice(Double salePrice) {
		this.salePrice = salePrice;
	}

	public Double getRentPrice() {
		return this.rentPrice;
	}

	public void setRentPrice(Double rentPrice) {
		this.rentPrice = rentPrice;
	}

	public Integer getHall() {
		return this.hall;
	}

	public void setHall(Integer hall) {
		this.hall = hall;
	}

	public Integer getBedroom() {
		return this.bedroom;
	}

	public void setBedroom(Integer bedroom) {
		this.bedroom = bedroom;
	}

	public Integer getToilet() {
		return this.toilet;
	}

	public void setToilet(Integer toilet) {
		this.toilet = toilet;
	}

	public Integer getPorch() {
		return this.porch;
	}

	public void setPorch(Integer porch) {
		this.porch = porch;
	}

	public Double getManageCost() {
		return this.manageCost;
	}

	public void setManageCost(Double manageCost) {
		this.manageCost = manageCost;
	}

	public Double getWaterCost() {
		return this.waterCost;
	}

	public void setWaterCost(Double waterCost) {
		this.waterCost = waterCost;
	}

	public Double getElectricCost() {
		return this.electricCost;
	}

	public void setElectricCost(Double electricCost) {
		this.electricCost = electricCost;
	}

	public Double getOtherCost() {
		return this.otherCost;
	}

	public void setOtherCost(Double otherCost) {
		this.otherCost = otherCost;
	}

	public Integer getBuildYear() {
		return this.buildYear;
	}

	public void setBuildYear(Integer buildYear) {
		this.buildYear = buildYear;
	}

	public Integer getMinMonth() {
		return this.minMonth;
	}

	public void setMinMonth(Integer minMonth) {
		this.minMonth = minMonth;
	}

	public Double getDeposit() {
		return this.deposit;
	}

	public void setDeposit(Double deposit) {
		this.deposit = deposit;
	}

	public Short getFitment() {
		return this.fitment;
	}

	public void setFitment(Short fitment) {
		this.fitment = fitment;
	}

	public Short getDevice() {
		return this.device;
	}

	public void setDevice(Short device) {
		this.device = device;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getImagePath() {
		return this.imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	public Date getCreateTime() {
		return this.createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Integer getCreateUserId() {
		return this.createUserId;
	}

	public void setCreateUserId(Integer createUserId) {
		this.createUserId = createUserId;
	}

	public Date getUpdateTime() {
		return this.updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public Integer getUpdateUserId() {
		return this.updateUserId;
	}

	public void setUpdateUserId(Integer updateUserId) {
		this.updateUserId = updateUserId;
	}

	public Integer getExamineUserId() {
		return examineUserId;
	}

	public void setExamineUserId(Integer examineUserId) {
		this.examineUserId = examineUserId;
	}

	public Short getExamine() {
		return examine;
	}

	public void setExamine(Short examine) {
		this.examine = examine;
	}

	public Integer getPalaceId() {
		return palaceId;
	}

	public void setPalaceId(Integer palaceId) {
		this.palaceId = palaceId;
	}
	
	public Short getIsRecommond() {
		return isRecommond;
	}

	public void setIsRecommond(Short isRecommond) {
		this.isRecommond = isRecommond;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((estateId == null) ? 0 : estateId.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		final EstateOut other = (EstateOut) obj;
		if (estateId == null) {
			if (other.estateId != null)
				return false;
		} else if (!estateId.equals(other.estateId))
			return false;
		return true;
	}

}
