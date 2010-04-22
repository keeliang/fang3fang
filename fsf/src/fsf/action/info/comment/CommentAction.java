package fsf.action.info.comment;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import fsf.beans.info.comment.Comment;
import chance.base.action.BaseAction;
import chance.base.BaseParameter;
import fsf.service.info.comment.CommentService;

@Controller
@Scope("prototype")
public class CommentAction extends BaseAction<Comment> {
	
	public CommentAction() {
		super(Comment.class, new String[] { "commentId" });
	}
	
	@Resource
	public void setCommentService(CommentService commentService){
		this.service = commentService;
	}
	
	public CommentService getCommentService(){
		return (CommentService)this.service;
	}

	public void setCommentParameter(CommentParameter param){
		this.baseParameter = param;
	}
	public CommentParameter getCommentParameter(){
		return (CommentParameter)baseParameter;
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