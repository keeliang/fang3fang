package fsf.action.est.businessarea;

import java.util.Date;

import chance.base.BaseParameter;

public class BusinessareaParameter extends BaseParameter{

	private Integer _ne_areaId;
	private String _se_areaName;
	private Integer _ne_provinceId;
	private Integer _ne_cityId;
	private Integer _ne_districtId;

	public void set_ne_areaId(Integer _ne_areaId){
		this._ne_areaId = _ne_areaId;
	}
	public Integer get_ne_areaId(){
		return this._ne_areaId;
	}
	public void set_se_areaName(String _se_areaName){
		this._se_areaName = _se_areaName;
	}
	public String get_se_areaName(){
		return this._se_areaName;
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
}