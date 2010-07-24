package fsf.action.est.businessarea;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import chance.base.BaseParameter;
import chance.base.action.BaseAction;
import fsf.beans.est.businessarea.Businessarea;
import fsf.beans.sys.dict.DictItem;
import fsf.service.est.businessarea.BusinessareaService;
import fsf.service.sys.dict.DictItemService;

@Controller
@Scope("prototype")
public class BusinessareaAction extends BaseAction<Businessarea> {
	
	public BusinessareaAction() {
		super(Businessarea.class, new String[] { "areaId" });
	}
	
	@Resource
	private DictItemService dictItemService;
	
	public String getCityList() throws Exception {
		BaseParameter param = new BaseParameter();
		param.getQueryDynamicConditions().put("_ne_province_id", provinceId);
		List<DictItem> list = dictItemService.getDaynamicConfig("sys_city","city_id","city_name",param);
		JSONObject json = new JSONObject();
		json.put("data", JSONArray.fromObject(list));
		getHttpServletResponse().setCharacterEncoding("UTF-8");
		getHttpServletResponse().getWriter().write(json.toString());
		return null;
	}
	
	public String getDistrictList() throws Exception {
		BaseParameter param = new BaseParameter();
		param.getQueryDynamicConditions().put("_ne_province_id", provinceId);
		param.getQueryDynamicConditions().put("_ne_city_id", cityId);
		List<DictItem> list = dictItemService.getDaynamicConfig("sys_district","district_id","district_name",param);
		JSONObject json = new JSONObject();
		json.put("data", JSONArray.fromObject(list));
		getHttpServletResponse().setCharacterEncoding("UTF-8");
		getHttpServletResponse().getWriter().write(json.toString());
		return null;
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