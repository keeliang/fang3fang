package fsf.action.sys.district;

import chance.base.BaseParameter;

public class DistrictParameter extends BaseParameter{

	private Integer _ne_districtId;
	private String _se_districtName;
	private Integer _ne_cityId;
	private Integer _ne_provinceId;

	public Integer get_ne_provinceId() {
		return _ne_provinceId;
	}
	public void set_ne_provinceId(Integer id) {
		_ne_provinceId = id;
	}
	public void set_ne_districtId(Integer _ne_districtId){
		this._ne_districtId = _ne_districtId;
	}
	public Integer get_ne_districtId(){
		return this._ne_districtId;
	}
	public void set_se_districtName(String _se_districtName){
		this._se_districtName = _se_districtName;
	}
	public String get_se_districtName(){
		return this._se_districtName;
	}
	public void set_ne_cityId(Integer _ne_cityId){
		this._ne_cityId = _ne_cityId;
	}
	public Integer get_ne_cityId(){
		return this._ne_cityId;
	}
}