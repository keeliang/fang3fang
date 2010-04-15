package fsf.action.sys.user;

import java.util.Date;

import chance.base.BaseParameter;

public class UserParameter extends BaseParameter{

	private Integer _ne_userId;
	private String _se_userCode;
	private String _se_password;
	private String _se_userName;
	private Short _ne_status;
	private Short _ne_userType;
	private Integer _ne_provinceId;
	private Integer _ne_cityId;
	private Integer _ne_regionId;
	private String _se_address;
	private String _se_tel;
	private String _se_email;
	private Date _de_createDate;
	private String _se_imagePath;

	public void set_ne_userId(Integer _ne_userId){
		this._ne_userId = _ne_userId;
	}
	public Integer get_ne_userId(){
		return this._ne_userId;
	}
	public void set_se_userCode(String _se_userCode){
		this._se_userCode = _se_userCode;
	}
	public String get_se_userCode(){
		return this._se_userCode;
	}
	public void set_se_password(String _se_password){
		this._se_password = _se_password;
	}
	public String get_se_password(){
		return this._se_password;
	}
	public void set_se_userName(String _se_userName){
		this._se_userName = _se_userName;
	}
	public String get_se_userName(){
		return this._se_userName;
	}
	public void set_ne_status(Short _ne_status){
		this._ne_status = _ne_status;
	}
	public Short get_ne_status(){
		return this._ne_status;
	}
	public void set_ne_userType(Short _ne_userType){
		this._ne_userType = _ne_userType;
	}
	public Short get_ne_userType(){
		return this._ne_userType;
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
	public void set_ne_regionId(Integer _ne_regionId){
		this._ne_regionId = _ne_regionId;
	}
	public Integer get_ne_regionId(){
		return this._ne_regionId;
	}
	public void set_se_address(String _se_address){
		this._se_address = _se_address;
	}
	public String get_se_address(){
		return this._se_address;
	}
	public void set_se_tel(String _se_tel){
		this._se_tel = _se_tel;
	}
	public String get_se_tel(){
		return this._se_tel;
	}
	public void set_se_email(String _se_email){
		this._se_email = _se_email;
	}
	public String get_se_email(){
		return this._se_email;
	}
	public void set_de_createDate(Date _de_createDate){
		this._de_createDate = _de_createDate;
	}
	public Date get_de_createDate(){
		return this._de_createDate;
	}
	public void set_se_imagePath(String _se_imagePath){
		this._se_imagePath = _se_imagePath;
	}
	public String get_se_imagePath(){
		return this._se_imagePath;
	}
}