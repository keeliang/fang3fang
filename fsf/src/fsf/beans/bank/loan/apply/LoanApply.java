package fsf.beans.bank.loan.apply;

// Generated 2010-7-13 11:02:39 by Hibernate Tools 3.2.4.GA

import java.util.Date;

/**
 * BankLoanApply generated by hbm2java
 */
public class LoanApply implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1674012300921007669L;
	private Integer applyId;
	private String realName;
	private Byte sex;
	private Byte paperType;
	private String paperNo;
	private String company;
	private Byte isMarry;
	private String phone;
	private String tel;
	private Double loanAmount;
	private Integer loanYear;
	private Byte repayType;
	private Byte loanUsage;
	private Integer provinceId;
	private Integer cityId;
	private Integer districtId;
	private Byte estateProperty;
	private String estateName;
	private String address;
	private Double estatePrice;
	private Double registerPrice;
	private Integer estateYear;
	private Integer estateMonth;
	private Double area;
	private Date createTime;
	private Integer createUserId;
	private Byte status;

	public LoanApply() {
	}

	public Integer getApplyId() {
		return this.applyId;
	}

	public void setApplyId(Integer applyId) {
		this.applyId = applyId;
	}

	public String getRealName() {
		return this.realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public Byte getSex() {
		return this.sex;
	}

	public void setSex(Byte sex) {
		this.sex = sex;
	}

	public Byte getPaperType() {
		return this.paperType;
	}

	public void setPaperType(Byte paperType) {
		this.paperType = paperType;
	}

	public String getPaperNo() {
		return this.paperNo;
	}

	public void setPaperNo(String paperNo) {
		this.paperNo = paperNo;
	}

	public String getCompany() {
		return this.company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public Byte getIsMarry() {
		return this.isMarry;
	}

	public void setIsMarry(Byte isMarry) {
		this.isMarry = isMarry;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getTel() {
		return this.tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public Double getLoanAmount() {
		return this.loanAmount;
	}

	public void setLoanAmount(Double loanAmount) {
		this.loanAmount = loanAmount;
	}

	public Integer getLoanYear() {
		return this.loanYear;
	}

	public void setLoanYear(Integer loanYear) {
		this.loanYear = loanYear;
	}

	public Byte getRepayType() {
		return this.repayType;
	}

	public void setRepayType(Byte repayType) {
		this.repayType = repayType;
	}

	public Byte getLoanUsage() {
		return this.loanUsage;
	}

	public void setLoanUsage(Byte loanUsage) {
		this.loanUsage = loanUsage;
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

	public Byte getEstateProperty() {
		return this.estateProperty;
	}

	public void setEstateProperty(Byte estateProperty) {
		this.estateProperty = estateProperty;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Double getEstatePrice() {
		return this.estatePrice;
	}

	public void setEstatePrice(Double estatePrice) {
		this.estatePrice = estatePrice;
	}

	public Double getRegisterPrice() {
		return this.registerPrice;
	}

	public void setRegisterPrice(Double registerPrice) {
		this.registerPrice = registerPrice;
	}

	public Integer getEstateYear() {
		return this.estateYear;
	}

	public void setEstateYear(Integer estateYear) {
		this.estateYear = estateYear;
	}

	public Integer getEstateMonth() {
		return this.estateMonth;
	}

	public void setEstateMonth(Integer estateMonth) {
		this.estateMonth = estateMonth;
	}

	public Double getArea() {
		return this.area;
	}

	public void setArea(Double area) {
		this.area = area;
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

	public Byte getStatus() {
		return this.status;
	}

	public void setStatus(Byte status) {
		this.status = status;
	}

	public String getEstateName() {
		return estateName;
	}

	public void setEstateName(String estateName) {
		this.estateName = estateName;
	}

}