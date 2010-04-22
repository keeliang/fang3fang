package fsf.beans.est.estateout;
// default package
// Generated 2010-4-22 21:00:06 by Hibernate Tools 3.2.4.GA


import java.math.BigDecimal;
import java.util.Date;

/**
 * EstEstateOut generated by hbm2java
 */
public class EstateOut  implements java.io.Serializable {


     private Integer estateId;
     private String estateCardNo;
     private Byte card5year;
     private String estateName;
     private String develop;
     private byte tradeType;
     private int contactUserId;
     private Integer provinceId;
     private Integer cityId;
     private Integer districtId;
     private Integer areaId;
     private byte tradeMode;
     private byte estateType;
     private BigDecimal area;
     private byte isLift;
     private BigDecimal practicalArea;
     private int effective;
     private String estateAddress;
     private Integer toward;
     private int floor;
     private int totalFloor;
     private BigDecimal salePrice;
     private BigDecimal rentPrice;
     private int hall;
     private int bedroom;
     private int toilet;
     private int porch;
     private BigDecimal manageCost;
     private BigDecimal waterCost;
     private BigDecimal electricCost;
     private BigDecimal otherCost;
     private Integer buildYear;
     private Integer minMonth;
     private BigDecimal deposit;
     private byte fitment;
     private byte device;
     private String remark;
     private String imagePath;
     private Date createTime;
     private int createUserId;
     private Date updateTime;
     private int updateUserId;

    public EstateOut() {
    }

	
    public EstateOut(byte tradeType, int contactUserId, byte tradeMode, byte estateType, BigDecimal area, byte isLift, BigDecimal practicalArea, int effective, String estateAddress, int floor, int totalFloor, int hall, int bedroom, int toilet, int porch, BigDecimal manageCost, BigDecimal waterCost, byte fitment, byte device, Date createTime, int createUserId, Date updateTime, int updateUserId) {
        this.tradeType = tradeType;
        this.contactUserId = contactUserId;
        this.tradeMode = tradeMode;
        this.estateType = estateType;
        this.area = area;
        this.isLift = isLift;
        this.practicalArea = practicalArea;
        this.effective = effective;
        this.estateAddress = estateAddress;
        this.floor = floor;
        this.totalFloor = totalFloor;
        this.hall = hall;
        this.bedroom = bedroom;
        this.toilet = toilet;
        this.porch = porch;
        this.manageCost = manageCost;
        this.waterCost = waterCost;
        this.fitment = fitment;
        this.device = device;
        this.createTime = createTime;
        this.createUserId = createUserId;
        this.updateTime = updateTime;
        this.updateUserId = updateUserId;
    }
    public EstateOut(String estateCardNo, Byte card5year, String estateName, String develop, byte tradeType, int contactUserId, Integer provinceId, Integer cityId, Integer districtId, Integer areaId, byte tradeMode, byte estateType, BigDecimal area, byte isLift, BigDecimal practicalArea, int effective, String estateAddress, Integer toward, int floor, int totalFloor, BigDecimal salePrice, BigDecimal rentPrice, int hall, int bedroom, int toilet, int porch, BigDecimal manageCost, BigDecimal waterCost, BigDecimal electricCost, BigDecimal otherCost, Integer buildYear, Integer minMonth, BigDecimal deposit, byte fitment, byte device, String remark, String imagePath, Date createTime, int createUserId, Date updateTime, int updateUserId) {
       this.estateCardNo = estateCardNo;
       this.card5year = card5year;
       this.estateName = estateName;
       this.develop = develop;
       this.tradeType = tradeType;
       this.contactUserId = contactUserId;
       this.provinceId = provinceId;
       this.cityId = cityId;
       this.districtId = districtId;
       this.areaId = areaId;
       this.tradeMode = tradeMode;
       this.estateType = estateType;
       this.area = area;
       this.isLift = isLift;
       this.practicalArea = practicalArea;
       this.effective = effective;
       this.estateAddress = estateAddress;
       this.toward = toward;
       this.floor = floor;
       this.totalFloor = totalFloor;
       this.salePrice = salePrice;
       this.rentPrice = rentPrice;
       this.hall = hall;
       this.bedroom = bedroom;
       this.toilet = toilet;
       this.porch = porch;
       this.manageCost = manageCost;
       this.waterCost = waterCost;
       this.electricCost = electricCost;
       this.otherCost = otherCost;
       this.buildYear = buildYear;
       this.minMonth = minMonth;
       this.deposit = deposit;
       this.fitment = fitment;
       this.device = device;
       this.remark = remark;
       this.imagePath = imagePath;
       this.createTime = createTime;
       this.createUserId = createUserId;
       this.updateTime = updateTime;
       this.updateUserId = updateUserId;
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
    public Byte getCard5year() {
        return this.card5year;
    }
    
    public void setCard5year(Byte card5year) {
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
    public byte getTradeType() {
        return this.tradeType;
    }
    
    public void setTradeType(byte tradeType) {
        this.tradeType = tradeType;
    }
    public int getContactUserId() {
        return this.contactUserId;
    }
    
    public void setContactUserId(int contactUserId) {
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
    public byte getTradeMode() {
        return this.tradeMode;
    }
    
    public void setTradeMode(byte tradeMode) {
        this.tradeMode = tradeMode;
    }
    public byte getEstateType() {
        return this.estateType;
    }
    
    public void setEstateType(byte estateType) {
        this.estateType = estateType;
    }
    public BigDecimal getArea() {
        return this.area;
    }
    
    public void setArea(BigDecimal area) {
        this.area = area;
    }
    public byte getIsLift() {
        return this.isLift;
    }
    
    public void setIsLift(byte isLift) {
        this.isLift = isLift;
    }
    public BigDecimal getPracticalArea() {
        return this.practicalArea;
    }
    
    public void setPracticalArea(BigDecimal practicalArea) {
        this.practicalArea = practicalArea;
    }
    public int getEffective() {
        return this.effective;
    }
    
    public void setEffective(int effective) {
        this.effective = effective;
    }
    public String getEstateAddress() {
        return this.estateAddress;
    }
    
    public void setEstateAddress(String estateAddress) {
        this.estateAddress = estateAddress;
    }
    public Integer getToward() {
        return this.toward;
    }
    
    public void setToward(Integer toward) {
        this.toward = toward;
    }
    public int getFloor() {
        return this.floor;
    }
    
    public void setFloor(int floor) {
        this.floor = floor;
    }
    public int getTotalFloor() {
        return this.totalFloor;
    }
    
    public void setTotalFloor(int totalFloor) {
        this.totalFloor = totalFloor;
    }
    public BigDecimal getSalePrice() {
        return this.salePrice;
    }
    
    public void setSalePrice(BigDecimal salePrice) {
        this.salePrice = salePrice;
    }
    public BigDecimal getRentPrice() {
        return this.rentPrice;
    }
    
    public void setRentPrice(BigDecimal rentPrice) {
        this.rentPrice = rentPrice;
    }
    public int getHall() {
        return this.hall;
    }
    
    public void setHall(int hall) {
        this.hall = hall;
    }
    public int getBedroom() {
        return this.bedroom;
    }
    
    public void setBedroom(int bedroom) {
        this.bedroom = bedroom;
    }
    public int getToilet() {
        return this.toilet;
    }
    
    public void setToilet(int toilet) {
        this.toilet = toilet;
    }
    public int getPorch() {
        return this.porch;
    }
    
    public void setPorch(int porch) {
        this.porch = porch;
    }
    public BigDecimal getManageCost() {
        return this.manageCost;
    }
    
    public void setManageCost(BigDecimal manageCost) {
        this.manageCost = manageCost;
    }
    public BigDecimal getWaterCost() {
        return this.waterCost;
    }
    
    public void setWaterCost(BigDecimal waterCost) {
        this.waterCost = waterCost;
    }
    public BigDecimal getElectricCost() {
        return this.electricCost;
    }
    
    public void setElectricCost(BigDecimal electricCost) {
        this.electricCost = electricCost;
    }
    public BigDecimal getOtherCost() {
        return this.otherCost;
    }
    
    public void setOtherCost(BigDecimal otherCost) {
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
    public BigDecimal getDeposit() {
        return this.deposit;
    }
    
    public void setDeposit(BigDecimal deposit) {
        this.deposit = deposit;
    }
    public byte getFitment() {
        return this.fitment;
    }
    
    public void setFitment(byte fitment) {
        this.fitment = fitment;
    }
    public byte getDevice() {
        return this.device;
    }
    
    public void setDevice(byte device) {
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
    public int getCreateUserId() {
        return this.createUserId;
    }
    
    public void setCreateUserId(int createUserId) {
        this.createUserId = createUserId;
    }
    public Date getUpdateTime() {
        return this.updateTime;
    }
    
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
    public int getUpdateUserId() {
        return this.updateUserId;
    }
    
    public void setUpdateUserId(int updateUserId) {
        this.updateUserId = updateUserId;
    }




}


