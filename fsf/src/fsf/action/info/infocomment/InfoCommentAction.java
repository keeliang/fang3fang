package fsf.action.info.infocomment;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import chance.base.action.BaseAction;
import fsf.beans.info.infocomment.InfoComment;
import fsf.beans.sys.user.User;
import fsf.service.info.infocomment.InfoCommentService;
import fsf.web.common.ThreadUser;

@Controller
@Scope("prototype")
public class InfoCommentAction extends BaseAction<InfoComment> {
	
	public InfoCommentAction() {
		super(InfoComment.class, new String[] { "commentId" });
	}
	
	@Override
	protected void initData() {
		User u = ThreadUser.get();
		createUserId = u.getUserId();
		createTime = new Date();
		updateUserId = u.getUserId();
		updateTime = createTime;
		ip = getHttpServletRequest().getRemoteAddr();
	}
	
	@Override
	protected void beforePersist() {
		User u = ThreadUser.get();
		createUserId = u.getUserId();
		createTime = new Date();
		updateUserId = u.getUserId();
		updateTime = createTime;
		ip = getHttpServletRequest().getRemoteAddr();
	}
	@Override
	protected void beforeUpdate() {
		User u = ThreadUser.get();
		updateUserId = u.getUserId();
		updateTime = new Date();
	}
	
	@Resource
	public void setInfoCommentService(InfoCommentService infoCommentService){
		this.service = infoCommentService;
	}
	
	public InfoCommentService getInfoCommentService(){
		return (InfoCommentService)this.service;
	}

	public void setInfoCommentParameter(InfoCommentParameter param){
		this.baseParameter = param;
	}
	public InfoCommentParameter getInfoCommentParameter(){
		return (InfoCommentParameter)baseParameter;
	}
	
	private Integer commentId;
	private String content;
	private Integer informationId;
	private String ip;
	private Short status;
	private Date createTime;
	private Integer createUserId;
	private Date updateTime;
	private Integer updateUserId;

	public void setCommentId(Integer commentId){
		this.commentId = commentId;
	}
	public Integer getCommentId(){
		return this.commentId;
	}
	public void setContent(String content){
		this.content = content;
	}
	public String getContent(){
		return this.content;
	}
	public void setInformationId(Integer informationId){
		this.informationId = informationId;
	}
	public Integer getInformationId(){
		return this.informationId;
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