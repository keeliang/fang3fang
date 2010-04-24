package fsf.action.sys.province;

import java.util.Date;

import chance.base.BaseParameter;

public class ProvinceParameter extends BaseParameter{

	private Integer _ne_provinceId;
	private String _se_provinceName;

	public void set_ne_provinceId(Integer _ne_provinceId){
		this._ne_provinceId = _ne_provinceId;
	}
	public Integer get_ne_provinceId(){
		return this._ne_provinceId;
	}
	public void set_se_provinceName(String _se_provinceName){
		this._se_provinceName = _se_provinceName;
	}
	public String get_se_provinceName(){
		return this._se_provinceName;
	}
}