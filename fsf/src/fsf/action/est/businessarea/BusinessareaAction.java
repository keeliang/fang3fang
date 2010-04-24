package fsf.action.est.businessarea;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import fsf.beans.est.businessarea.Businessarea;
import chance.base.action.BaseAction;
import chance.base.BaseParameter;
import fsf.service.est.businessarea.BusinessareaService;

@Controller
@Scope("prototype")
public class BusinessareaAction extends BaseAction<Businessarea> {
	
	public BusinessareaAction() {
		super(Businessarea.class, new String[] { "areaId" });
	}
	
	@Resource
	public void setBusinessareaService(BusinessareaService businessareaService){
		this.service = businessareaService;
	}
	
	public BusinessareaService getBusinessareaService(){
		return (BusinessareaService)this.service;
	}

	public void setBusinessareaParameter(BusinessareaParameter param){
		this.baseParameter = param;
	}
	public BusinessareaParameter getBusinessareaParameter(){
		return (BusinessareaParameter)baseParameter;
	}
	
	private Integer areaId;
	private String areaName;
	private Integer provinceId;
	private Integer cityId;
	private Integer districtId;

	public void setAreaId(Integer areaId){
		this.areaId = areaId;
	}
	public Integer getAreaId(){
		return this.areaId;
	}
	public void setAreaName(String areaName){
		this.areaName = areaName;
	}
	public String getAreaName(){
		return this.areaName;
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

}