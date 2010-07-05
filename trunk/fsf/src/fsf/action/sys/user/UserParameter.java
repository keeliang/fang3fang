package fsf.action.sys.user;

import java.util.Date;

import chance.base.BaseParameter;

public class UserParameter extends BaseParameter {

	private Integer _ne_userId;
	private String _se_userCode;
	private String _se_password;
	private String _se_question;
	private String _se_answer;
	private String _se_userName;
	private Short _ne_sex;
	private Short _ne_status;
	private Short _ne_userType;
	private Short[] _nin_userType;
	private Integer _ne_provinceId;
	private Integer _ne_cityId;
	private Integer _ne_districtId;
	private String _se_address;
	private String _se_tel;
	private String _se_phone;
	private String _se_qq;
	private String _se_msn;
	private String _se_email;
	private String _se_remark;
	private Date _dge_createDate;
	private Date _dle_createDate;
	private String _se_imagePath;

	public void set_ne_userId(Integer _ne_userId) {
		this._ne_userId = _ne_userId;
	}

	public Integer get_ne_userId() {
		return this._ne_userId;
	}

	public void set_se_userCode(String _se_userCode) {
		this._se_userCode = _se_userCode;
	}

	public String get_se_userCode() {
		return this._se_userCode;
	}

	public void set_se_password(String _se_password) {
		this._se_password = _se_password;
	}

	public String get_se_password() {
		return this._se_password;
	}

	public void set_se_question(String _se_question) {
		this._se_question = _se_question;
	}

	public String get_se_question() {
		return this._se_question;
	}

	public void set_se_answer(String _se_answer) {
		this._se_answer = _se_answer;
	}

	public String get_se_answer() {
		return this._se_answer;
	}

	public void set_se_userName(String _se_userName) {
		this._se_userName = _se_userName;
	}

	public String get_se_userName() {
		return this._se_userName;
	}

	public void set_ne_sex(Short _ne_sex) {
		this._ne_sex = _ne_sex;
	}

	public Short get_ne_sex() {
		return this._ne_sex;
	}

	public void set_ne_status(Short _ne_status) {
		this._ne_status = _ne_status;
	}

	public Short get_ne_status() {
		return this._ne_status;
	}

	public void set_ne_userType(Short _ne_userType) {
		this._ne_userType = _ne_userType;
	}

	public Short get_ne_userType() {
		return this._ne_userType;
	}

	public void set_ne_provinceId(Integer _ne_provinceId) {
		this._ne_provinceId = _ne_provinceId;
	}

	public Integer get_ne_provinceId() {
		return this._ne_provinceId;
	}

	public void set_ne_cityId(Integer _ne_cityId) {
		this._ne_cityId = _ne_cityId;
	}

	public Integer get_ne_cityId() {
		return this._ne_cityId;
	}

	public void set_ne_districtId(Integer _ne_districtId) {
		this._ne_districtId = _ne_districtId;
	}

	public Integer get_ne_districtId() {
		return this._ne_districtId;
	}

	public void set_se_address(String _se_address) {
		this._se_address = _se_address;
	}

	public String get_se_address() {
		return this._se_address;
	}

	public void set_se_tel(String _se_tel) {
		this._se_tel = _se_tel;
	}

	public String get_se_tel() {
		return this._se_tel;
	}

	public void set_se_phone(String _se_phone) {
		this._se_phone = _se_phone;
	}

	public String get_se_phone() {
		return this._se_phone;
	}

	public void set_se_qq(String _se_qq) {
		this._se_qq = _se_qq;
	}

	public String get_se_qq() {
		return this._se_qq;
	}

	public void set_se_msn(String _se_msn) {
		this._se_msn = _se_msn;
	}

	public String get_se_msn() {
		return this._se_msn;
	}

	public void set_se_email(String _se_email) {
		this._se_email = _se_email;
	}

	public String get_se_email() {
		return this._se_email;
	}

	public void set_se_remark(String _se_remark) {
		this._se_remark = _se_remark;
	}

	public String get_se_remark() {
		return this._se_remark;
	}

	public Date get_dge_createDate() {
		return _dge_createDate;
	}

	public void set_dge_createDate(Date date) {
		_dge_createDate = date;
	}

	public Date get_dle_createDate() {
		return _dle_createDate;
	}

	public void set_dle_createDate(Date date) {
		_dle_createDate = date;
	}

	public void set_se_imagePath(String _se_imagePath) {
		this._se_imagePath = _se_imagePath;
	}

	public String get_se_imagePath() {
		return this._se_imagePath;
	}

	public Short[] get_nin_userType() {
		return _nin_userType;
	}

	public void set_nin_userType(Short[] type) {
		_nin_userType = type;
	}
	
}