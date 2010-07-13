package fsf.action.bank.loan.apply;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import fsf.beans.bank.loan.apply.LoanApply;
import chance.base.action.BaseAction;
import fsf.service.bank.loan.apply.LoanApplyService;
import fsf.web.common.ThreadUser;

@Controller
@Scope("prototype")
public class LoanApplyAction extends BaseAction<LoanApply> {
	
	public LoanApplyAction() {
		super(LoanApply.class, new String[] { "applyId" });
	}
	
	@Override
	protected void initData() {
		createTime = new Date();
		createUserId = ThreadUser.get().getUserId();
		status = 1;
	}
	
	@Override
	protected void beforePersist() {
		createTime = new Date();
		createUserId = ThreadUser.get().getUserId();
		status = 1;
	};
	
	@Resource
	public void setLoanApplyService(LoanApplyService loanApplyService){
		this.service = loanApplyService;
	}

	public void setLoanApplyParameter(LoanApplyParameter param){
		this.baseParameter = param;
	}
	public LoanApplyParameter getLoanApplyParameter(){
		return (LoanApplyParameter)baseParameter;
	}
	
	private Integer applyId;
	private String realName;
	private Short sex;
	private Short paperType;
	private String paperNo;
	private String company;
	private Short isMarry;
	private String phone;
	private String tel;
	private Float loanAmount;
	private Integer loanYear;
	private Short repayType;
	private Short loanUsage;
	private Integer provinceId;
	private Integer cityId;
	private Integer districtId;
	private Short estateProperty;
	private String estateName;
	private String address;
	private Float estatePrice;
	private Float registerPrice;
	private Integer estateYear;
	private Integer estateMonth;
	private Float area;
	private Date createTime;
	private Integer createUserId;
	private Short status;

	public void setApplyId(Integer applyId){
		this.applyId = applyId;
	}
	public Integer getApplyId(){
		return this.applyId;
	}
	public void setRealName(String realName){
		this.realName = realName;
	}
	public String getRealName(){
		return this.realName;
	}
	public void setSex(Short sex){
		this.sex = sex;
	}
	public Short getSex(){
		return this.sex;
	}
	public void setPaperType(Short paperType){
		this.paperType = paperType;
	}
	public Short getPaperType(){
		return this.paperType;
	}
	public void setPaperNo(String paperNo){
		this.paperNo = paperNo;
	}
	public String getPaperNo(){
		return this.paperNo;
	}
	public void setCompany(String company){
		this.company = company;
	}
	public String getCompany(){
		return this.company;
	}
	public void setIsMarry(Short isMarry){
		this.isMarry = isMarry;
	}
	public Short getIsMarry(){
		return this.isMarry;
	}
	public void setPhone(String phone){
		this.phone = phone;
	}
	public String getPhone(){
		return this.phone;
	}
	public void setTel(String tel){
		this.tel = tel;
	}
	public String getTel(){
		return this.tel;
	}
	public void setLoanAmount(Float loanAmount){
		this.loanAmount = loanAmount;
	}
	public Float getLoanAmount(){
		return this.loanAmount;
	}
	public void setLoanYear(Integer loanYear){
		this.loanYear = loanYear;
	}
	public Integer getLoanYear(){
		return this.loanYear;
	}
	public void setRepayType(Short repayType){
		this.repayType = repayType;
	}
	public Short getRepayType(){
		return this.repayType;
	}
	public void setLoanUsage(Short loanUsage){
		this.loanUsage = loanUsage;
	}
	public Short getLoanUsage(){
		return this.loanUsage;
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
	public void setEstateProperty(Short estateProperty){
		this.estateProperty = estateProperty;
	}
	public Short getEstateProperty(){
		return this.estateProperty;
	}
	
	public String getEstateName() {
		return estateName;
	}

	public void setEstateName(String estateName) {
		this.estateName = estateName;
	}

	public void setAddress(String address){
		this.address = address;
	}
	public String getAddress(){
		return this.address;
	}
	public void setEstatePrice(Float estatePrice){
		this.estatePrice = estatePrice;
	}
	public Float getEstatePrice(){
		return this.estatePrice;
	}
	public void setRegisterPrice(Float registerPrice){
		this.registerPrice = registerPrice;
	}
	public Float getRegisterPrice(){
		return this.registerPrice;
	}
	public void setEstateYear(Integer estateYear){
		this.estateYear = estateYear;
	}
	public Integer getEstateYear(){
		return this.estateYear;
	}
	public void setEstateMonth(Integer estateMonth){
		this.estateMonth = estateMonth;
	}
	public Integer getEstateMonth(){
		return this.estateMonth;
	}
	public void setArea(Float area){
		this.area = area;
	}
	public Float getArea(){
		return this.area;
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
	public void setStatus(Short status){
		this.status = status;
	}
	public Short getStatus(){
		return this.status;
	}

}