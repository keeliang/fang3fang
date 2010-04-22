package fsf.action.info.newtype;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import fsf.beans.info.newtype.NewType;
import chance.base.action.BaseAction;
import chance.base.BaseParameter;
import fsf.service.info.newtype.NewTypeService;

@Controller
@Scope("prototype")
public class NewTypeAction extends BaseAction<NewType> {
	
	public NewTypeAction() {
		super(NewType.class, new String[] { "newTypeId" });
	}
	
	@Resource
	public void setNewTypeService(NewTypeService newTypeService){
		this.service = newTypeService;
	}
	
	public NewTypeService getNewTypeService(){
		return (NewTypeService)this.service;
	}

	public void setNewTypeParameter(NewTypeParameter param){
		this.baseParameter = param;
	}
	public NewTypeParameter getNewTypeParameter(){
		return (NewTypeParameter)baseParameter;
	}
	
	private Integer newTypeId;
	private String title;
	private Integer seq;
	private Short status;
	private Date createTime;
	private Integer createUserId;
	private Date modifyTime;
	private Integer modifyUserId;

	public void setNewTypeId(Integer newTypeId){
		this.newTypeId = newTypeId;
	}
	public Integer getNewTypeId(){
		return this.newTypeId;
	}
	public void setTitle(String title){
		this.title = title;
	}
	public String getTitle(){
		return this.title;
	}
	public void setSeq(Integer seq){
		this.seq = seq;
	}
	public Integer getSeq(){
		return this.seq;
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
	public void setModifyTime(Date modifyTime){
		this.modifyTime = modifyTime;
	}
	public Date getModifyTime(){
		return this.modifyTime;
	}
	public void setModifyUserId(Integer modifyUserId){
		this.modifyUserId = modifyUserId;
	}
	public Integer getModifyUserId(){
		return this.modifyUserId;
	}

}