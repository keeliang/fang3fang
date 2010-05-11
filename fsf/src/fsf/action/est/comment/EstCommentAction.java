package fsf.action.est.comment;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import fsf.beans.est.comment.EstComment;
import chance.base.action.BaseAction;
import chance.base.BaseParameter;
import fsf.service.est.comment.EstCommentService;

@Controller
@Scope("prototype")
public class EstCommentAction extends BaseAction<EstComment> {
	
	public EstCommentAction() {
		super(EstComment.class, new String[] { "estateId","type" });
	}
	
	@Resource
	public void setEstCommentService(EstCommentService estCommentService){
		this.service = estCommentService;
	}
	
	public EstCommentService getEstCommentService(){
		return (EstCommentService)this.service;
	}

	public void setEstCommentParameter(EstCommentParameter param){
		this.baseParameter = param;
	}
	public EstCommentParameter getEstCommentParameter(){
		return (EstCommentParameter)baseParameter;
	}
	
	private Integer estateId;
	private Integer type;
	private String content;
	private String ip;
	private Short status;
	private Date createTime;
	private Integer createUserId;
	private Date updateTime;
	private Integer updateUserId;

	public void setEstateId(Integer estateId){
		this.estateId = estateId;
	}
	public Integer getEstateId(){
		return this.estateId;
	}
	public void setType(Integer type){
		this.type = type;
	}
	public Integer getType(){
		return this.type;
	}
	public void setContent(String content){
		this.content = content;
	}
	public String getContent(){
		return this.content;
	}
	public void setIp(String ip){
		this.ip = ip;
	}
	public String getIp(){
		return this.ip;
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