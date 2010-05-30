package fsf.action.est.commerce;

import chance.base.BaseParameter;

public class CommerceParameter extends BaseParameter{
	private static final long serialVersionUID = 1261849913894770682L;
	
	private Integer _ne_commerceId;
	private String _slike_title;
	private String _slike_content;
	private Integer _ne_provinceId;
	private Integer _ne_cityId;
	private Integer _ne_districtId;
	private Integer _ne_areaId;
	private Integer _ne_commerceType;
	private Short _ne_status;
	private String _slike_address;
	private String _se_contacter;
	private String _se_contactTel;

	public void set_ne_commerceId(Integer _ne_commerceId){
		this._ne_commerceId = _ne_commerceId;
	}
	public Integer get_ne_commerceId(){
		return this._ne_commerceId;
	}
	public void set_slike_title(String _slike_title){
		this._slike_title = _slike_title;
	}
	public String get_slike_title(){
		return this._slike_title;
	}
	public void set_slike_content(String _slike_content){
		this._slike_content = _slike_content;
	}
	public String get_slike_content(){
		return this._slike_content;
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
	public void set_ne_areaId(Integer _ne_areaId){
		this._ne_areaId = _ne_areaId;
	}
	public Integer get_ne_areaId(){
		return this._ne_areaId;
	}
	public void set_ne_commerceType(Integer _ne_commerceType){
		this._ne_commerceType = _ne_commerceType;
	}
	public Integer get_ne_commerceType(){
		return this._ne_commerceType;
	}
	public void set_ne_status(Short _ne_status){
		this._ne_status = _ne_status;
	}
	public Short get_ne_status(){
		return this._ne_status;
	}
	public String get_slike_address() {
		return _slike_address;
	}
	public void set_slike_address(String _slike_address) {
		this._slike_address = _slike_address;
	}
	public String get_se_contacter() {
		return _se_contacter;
	}
	public void set_se_contacter(String _se_contacter) {
		this._se_contacter = _se_contacter;
	}
	public String get_se_contactTel() {
		return _se_contactTel;
	}
	public void set_se_contactTel(String tel) {
		_se_contactTel = tel;
	}
}