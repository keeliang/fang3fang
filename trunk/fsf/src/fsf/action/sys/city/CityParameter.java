package fsf.action.sys.city;

import java.util.Date;

import chance.base.BaseParameter;

public class CityParameter extends BaseParameter{

	private Integer _ne_cityId;
	private String _se_cityName;
	private String _se_zipCode;
	private Integer _ne_provinceId;

	public void set_ne_cityId(Integer _ne_cityId){
		this._ne_cityId = _ne_cityId;
	}
	public Integer get_ne_cityId(){
		return this._ne_cityId;
	}
	public void set_se_cityName(String _se_cityName){
		this._se_cityName = _se_cityName;
	}
	public String get_se_cityName(){
		return this._se_cityName;
	}
	public void set_se_zipCode(String _se_zipCode){
		this._se_zipCode = _se_zipCode;
	}
	public String get_se_zipCode(){
		return this._se_zipCode;
	}
	public void set_ne_provinceId(Integer _ne_provinceId){
		this._ne_provinceId = _ne_provinceId;
	}
	public Integer get_ne_provinceId(){
		return this._ne_provinceId;
	}
}