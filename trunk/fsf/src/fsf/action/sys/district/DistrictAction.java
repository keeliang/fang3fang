package fsf.action.sys.district;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import chance.base.BaseParameter;
import chance.base.action.BaseAction;
import fsf.beans.sys.dict.DictItem;
import fsf.beans.sys.district.District;
import fsf.service.sys.district.DistrictService;

@Controller
@Scope("prototype")
public class DistrictAction extends BaseAction<District> {
	
	public DistrictAction() {
		super(District.class, new String[] { "districtId" });
	}
	
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