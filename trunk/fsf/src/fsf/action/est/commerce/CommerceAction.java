package fsf.action.est.commerce;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import fsf.beans.est.commerce.Commerce;
import chance.base.action.BaseAction;
import chance.base.BaseParameter;
import fsf.service.est.commerce.CommerceService;

@Controller
@Scope("prototype")
public class CommerceAction extends BaseAction<Commerce> {
	
	public CommerceAction() {
		super(Commerce.class, new String[] { "commerceId" });
	}
	
	@Resource
	public void setCommerceService(CommerceService commerceService){
		this.service = commerceService;
	}
	
	public CommerceService getCommerceService(){
		return (CommerceService)this.service;
	}

	public void setCommerceParameter(CommerceParameter param){
		this.baseParameter = param;
	}
	public CommerceParameter getCommerceParameter(){
		return (CommerceParameter)baseParameter;
	}
	
	private Integer commerceId;
	private String title;
	private String content;
	private Integer provinceId;
	private Integer cityId;
	private Integer districtId;
	private Integer areaId;
	private Integer commerceType;
	private Short status;
	private String ip;
	private Date createTime;
	private Integer createUserId;
	private Date updateTime;
	private Integer updateUserId;

	public void setCommerceId(Integer commerceId){
		this.commerceId = commerceId;
	}
	public Integer getCommerceId(){
		return this.commerceId;
	}
	public void setTitle(String title){
		this.title = title;
	}
	public String getTitle(){
		return this.title;
	}
	public void setContent(String content){
		this.content = content;
	}
	public String getContent(){
		return this.content;
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
	public void setAreaId(Integer areaId){
		this.areaId = areaId;
	}
	public Integer getAreaId(){
		return this.areaId;
	}
	public void setCommerceType(Integer commerceType){
		this.commerceType = commerceType;
	}
	public Integer getCommerceType(){
		return this.commerceType;
	}
	public void setStatus(Short status){
		this.status = status;
	}
	public Short getStatus(){
		return this.status;
	}
	public void setIp(String ip){
		this.ip = ip;
	}
	public String getIp(){
		return this.ip;
	}
	public void setCreateTime(Date createTime){
		this.createTime = createTime;
	}
	public Date getCreateTime(){
		return this.createTime;
	}
	public void setCreateUserId(Integer createUserId){
		this.createUserId = createUserId;
	}
	public Integer getCreateUserId(){
		return this.createUserId;
	}
	public void setUpdateTime(Date updateTime){
		this.updateTime = updateTime;
	}
	public Date getUpdateTime(){
		return this.updateTime;
	}
	public void setUpdateUserId(Integer updateUserId){
		this.updateUserId = updateUserId;
	}
	public Integer getUpdateUserId(){
		return this.updateUserId;
	}

}