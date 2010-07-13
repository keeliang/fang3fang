package fsf.action.bank.loan.apply;

import java.util.Date;

import chance.base.BaseParameter;

public class LoanApplyParameter extends BaseParameter{

	private Integer _ne_applyId;
	private String _se_realName;
	private Short _ne_sex;
	private Short _ne_paperType;
	private String _se_paperNo;
	private String _se_company;
	private Short _ne_isMarry;
	private String _se_phone;
	private String _se_tel;
	private Double _nge_loanAmount;
	private Double _nle_loanAmount;
	private Integer _ne_loanYear;
	private Short _ne_repayType;
	private Short _ne_loanUsage;
	private Integer _ne_provinceId;
	private Integer _ne_cityId;
	private Integer _ne_districtId;
	private Short _ne_estateProperty;
	private String _se_address;
	private Double _ne_estatePrice;
	private Double _ne_registerPrice;
	private Integer _ne_estateYear;
	private Integer _ne_estateMonth;
	private Double _ne_area;
	private Date _dge_createTime;
	private Date _dle_createTime;
	private Integer _ne_createUserId;
	private Short _ne_status;

	public void set_ne_applyId(Integer _ne_applyId){
		this._ne_applyId = _ne_applyId;
	}
	public Integer get_ne_applyId(){
		return this._ne_applyId;
	}
	public void set_se_realName(String _se_realName){
		this._se_realName = _se_realName;
	}
	public String get_se_realName(){
		return this._se_realName;
	}
	public void set_ne_sex(Short _ne_sex){
		this._ne_sex = _ne_sex;
	}
	public Short get_ne_sex(){
		return this._ne_sex;
	}
	public void set_ne_paperType(Short _ne_paperType){
		this._ne_paperType = _ne_paperType;
	}
	public Short get_ne_paperType(){
		return this._ne_paperType;
	}
	public void set_se_paperNo(String _se_paperNo){
		this._se_paperNo = _se_paperNo;
	}
	public String get_se_paperNo(){
		return this._se_paperNo;
	}
	public void set_se_company(String _se_company){
		this._se_company = _se_company;
	}
	public String get_se_company(){
		return this._se_company;
	}
	public void set_ne_isMarry(Short _ne_isMarry){
		this._ne_isMarry = _ne_isMarry;
	}
	public Short get_ne_isMarry(){
		return this._ne_isMarry;
	}
	public void set_se_phone(String _se_phone){
		this._se_phone = _se_phone;
	}
	public String get_se_phone(){
		return this._se_phone;
	}
	public void set_se_tel(String _se_tel){
		this._se_tel = _se_tel;
	}
	public String get_se_tel(){
		return this._se_tel;
	}
	public void set_ne_loanYear(Integer _ne_loanYear){
		this._ne_loanYear = _ne_loanYear;
	}
	public Integer get_ne_loanYear(){
		return this._ne_loanYear;
	}
	public void set_ne_repayType(Short _ne_repayType){
		this._ne_repayType = _ne_repayType;
	}
	public Short get_ne_repayType(){
		return this._ne_repayType;
	}
	public void set_ne_loanUsage(Short _ne_loanUsage){
		this._ne_loanUsage = _ne_loanUsage;
	}
	public Short get_ne_loanUsage(){
		return this._ne_loanUsage;
	}
	public void set_ne_provinceId(Integer _ne_provinceId){
		this._ne_provinceId = _ne_provinceId;
	}
	public Integer get_ne_provinceId(){
		return this._ne_provinceId;
	}
	public void set_ne_cityId(Integer _ne_cityId){
		this._ne_cityId = _ne_cityId;
	}
	public Integer get_ne_cityId(){
		return this._ne_cityId;
	}
	public void set_ne_districtId(Integer _ne_districtId){
		this._ne_districtId = _ne_districtId;
	}
	public Integer get_ne_districtId(){
		return this._ne_districtId;
	}
	public void set_ne_estateProperty(Short _ne_estateProperty){
		this._ne_estateProperty = _ne_estateProperty;
	}
	public Short get_ne_estateProperty(){
		return this._ne_estateProperty;
	}
	public void set_se_address(String _se_address){
		this._se_address = _se_address;
	}
	public String get_se_address(){
		return this._se_address;
	}
	public void set_ne_estatePrice(Double _ne_estatePrice){
		this._ne_estatePrice = _ne_estatePrice;
	}
	public Double get_ne_estatePrice(){
		return this._ne_estatePrice;
	}
	public void set_ne_registerPrice(Double _ne_registerPrice){
		this._ne_registerPrice = _ne_registerPrice;
	}
	public Double get_ne_registerPrice(){
		return this._ne_registerPrice;
	}
	public void set_ne_estateYear(Integer _ne_estateYear){
		this._ne_estateYear = _ne_estateYear;
	}
	public Integer get_ne_estateYear(){
		return this._ne_estateYear;
	}
	public void set_ne_estateMonth(Integer _ne_estateMonth){
		this._ne_estateMonth = _ne_estateMonth;
	}
	public Integer get_ne_estateMonth(){
		return this._ne_estateMonth;
	}
	public void set_ne_area(Double _ne_area){
		this._ne_area = _ne_area;
	}
	public Double get_ne_area(){
		return this._ne_area;
	}
	public void set_ne_createUserId(Integer _ne_createUserId){
		this._ne_createUserId = _ne_createUserId;
	}
	public Integer get_ne_createUserId(){
		return this._ne_createUserId;
	}
	public void set_ne_status(Short _ne_status){
		this._ne_status = _ne_status;
	}
	public Short get_ne_status(){
		return this._ne_status;
	}
	public Double get_nge_loanAmount() {
		return _nge_loanAmount;
	}
	public void set_nge_loanAmount(Double amount) {
		_nge_loanAmount = amount;
	}
	public Double get_nle_loanAmount() {
		return _nle_loanAmount;
	}
	public void set_nle_loanAmount(Double amount) {
		_nle_loanAmount = amount;
	}
	public Date get_dge_createTime() {
		return _dge_createTime;
	}
	public void set_dge_createTime(Date time) {
		_dge_createTime = time;
	}
	public Date get_dle_createTime() {
		return _dle_createTime;
	}
	public void set_dle_createTime(Date time) {
		_dle_createTime = time;
	}
	
}