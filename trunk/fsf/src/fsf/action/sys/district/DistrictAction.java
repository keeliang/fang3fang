package fsf.action.sys.district;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import fsf.beans.sys.district.District;
import chance.base.action.BaseAction;
import chance.base.BaseParameter;
import fsf.service.sys.district.DistrictService;

@Controller
@Scope("prototype")
public class DistrictAction extends BaseAction<District> {
	
	public DistrictAction() {
		super(District.class, new String[] { "districtId" });
	}
	
	@Resource
	public void setDistrictService(DistrictService districtService){
		this.service = districtService;
	}
	
	public DistrictService getDistrictService(){
		return (DistrictService)this.service;
	}

	public void setDistrictParameter(DistrictParameter param){
		this.baseParameter = param;
	}
	public DistrictParameter getDistrictParameter(){
		return (DistrictParameter)baseParameter;
	}
	
	private Integer districtId;
	private String districtName;
	private Integer cityId;
	private Integer provinceId;

	public void setDistrictId(Integer districtId){
		this.districtId = districtId;
	}
	public Integer getDistrictId(){
		return this.districtId;
	}
	public void setDistrictName(String districtName){
		this.districtName = districtName;
	}
	public String getDistrictName(){
		return this.districtName;
	}
	public void setCityId(Integer cityId){
		this.cityId = cityId;
	}
	public Integer getCityId(){
		return this.cityId;
	}

	public Integer getProvinceId() {
		return provinceId;
	}

	public void setProvinceId(Integer provinceId) {
		this.provinceId = provinceId;
	}

}