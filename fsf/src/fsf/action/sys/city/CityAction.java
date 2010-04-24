package fsf.action.sys.city;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import fsf.beans.sys.city.City;
import chance.base.action.BaseAction;
import chance.base.BaseParameter;
import fsf.service.sys.city.CityService;

@Controller
@Scope("prototype")
public class CityAction extends BaseAction<City> {
	
	public CityAction() {
		super(City.class, new String[] { "cityId" });
	}
	
	@Resource
	public void setCityService(CityService cityService){
		this.service = cityService;
	}
	
	public CityService getCityService(){
		return (CityService)this.service;
	}

	public void setCityParameter(CityParameter param){
		this.baseParameter = param;
	}
	public CityParameter getCityParameter(){
		return (CityParameter)baseParameter;
	}
	
	private Integer cityId;
	private String cityName;
	private String zipCode;
	private Integer provinceId;

	public void setCityId(Integer cityId){
		this.cityId = cityId;
	}
	public Integer getCityId(){
		return this.cityId;
	}
	public void setCityName(String cityName){
		this.cityName = cityName;
	}
	public String getCityName(){
		return this.cityName;
	}
	public void setZipCode(String zipCode){
		this.zipCode = zipCode;
	}
	public String getZipCode(){
		return this.zipCode;
	}
	public void setProvinceId(Integer provinceId){
		this.provinceId = provinceId;
	}
	public Integer getProvinceId(){
		return this.provinceId;
	}

}