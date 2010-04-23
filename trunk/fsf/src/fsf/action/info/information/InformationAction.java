package fsf.action.info.information;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import fsf.beans.info.information.Information;
import chance.base.action.BaseAction;
import chance.base.BaseParameter;
import fsf.service.info.information.InformationService;

@Controller
@Scope("prototype")
public class InformationAction extends BaseAction<Information> {
	
	public InformationAction() {
		super(Information.class, new String[] { "informationId" });
	}
	
	@Resource
	public void setInformationService(InformationService informationService){
		this.service = informationService;
	}
	
	public InformationService getInformationService(){
		return (InformationService)this.service;
	}

	public void setInformationParameter(InformationParameter param){
		this.baseParameter = param;
	}
	public InformationParameter getInformationParameter(){
		return (InformationParameter)baseParameter;
	}
	
	private Integer informationId;
	private String informationTitle;
	private String informationContent;
	private Short isNew;
	private Integer informationType;
	private Short status;
	private Date createTime;
	private Integer createUserId;
	private Date updateTime;
	private Integer updateUserId;

	public void setInformationId(Integer informationId){
		this.informationId = informationId;
	}
	public Integer getInformationId(){
		return this.informationId;
	}
	public void setInformationTitle(String informationTitle){
		this.informationTitle = informationTitle;
	}
	public String getInformationTitle(){
		return this.informationTitle;
	}
	public void setInformationContent(String informationContent){
		this.informationContent = informationContent;
	}
	public String getInformationContent(){
		return this.informationContent;
	}
	public void setIsNew(Short isNew){
		this.isNew = isNew;
	}
	public Short getIsNew(){
		return this.isNew;
	}
	public void setInformationType(Integer informationType){
		this.informationType = informationType;
	}
	public Integer getInformationType(){
		return this.informationType;
	}
	public void setStatus(Short status){
		this.status = status;
	}
	public Short getStatus(){
		return this.status;
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
	public void setupdateTime(Date updateTime){
		this.updateTime = updateTime;
	}
	public Date getupdateTime(){
		return this.updateTime;
	}
	public void setupdateUserId(Integer updateUserId){
		this.updateUserId = updateUserId;
	}
	public Integer getupdateUserId(){
		return this.updateUserId;
	}

}