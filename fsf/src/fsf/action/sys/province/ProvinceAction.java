package fsf.action.sys.province;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import fsf.beans.sys.province.Province;
import chance.base.action.BaseAction;
import chance.base.BaseParameter;
import fsf.service.sys.province.ProvinceService;

@Controller
@Scope("prototype")
public class ProvinceAction extends BaseAction<Province> {
	
	public ProvinceAction() {
		super(Province.class, new String[] { "provinceId" });
	}
	
	@Resource
	public void setProvinceService(ProvinceService provinceService){
		this.service = provinceService;
	}
	
	public ProvinceService getProvinceService(){
		return (ProvinceService)this.service;
	}

	public void setProvinceParameter(ProvinceParameter param){
		this.baseParameter = param;
	}
	public ProvinceParameter getProvinceParameter(){
		return (ProvinceParameter)baseParameter;
	}
	
	private Integer provinceId;
	private String provinceName;

	public void setProvinceId(Integer provinceId){
		this.provinceId = provinceId;
	}
	public Integer getProvinceId(){
		return this.provinceId;
	}
	public void setProvinceName(String provinceName){
		this.provinceName = provinceName;
	}
	public String getProvinceName(){
		return this.provinceName;
	}

}