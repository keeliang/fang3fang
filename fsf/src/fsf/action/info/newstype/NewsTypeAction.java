package fsf.action.info.newstype;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import chance.base.action.BaseAction;
import fsf.beans.info.newstype.NewsType;
import fsf.beans.sys.user.User;
import fsf.service.info.newstype.NewsTypeService;
import fsf.web.common.ThreadUser;

@Controller
@Scope("prototype")
public class NewsTypeAction extends BaseAction<NewsType> {
	
	public NewsTypeAction() {
		super(NewsType.class, new String[] { "newsTypeId" });
	}
	
	@Override
	protected void initData() {
		User u = ThreadUser.get();
		createUserId = u.getUserId();
		createTime = new Date();
		updateUserId = u.getUserId();
		updateTime = createTime;
	}
	
	@Override
	protected void beforePersist() {
		User u = ThreadUser.get();
		createUserId = u.getUserId();
		createTime = new Date();
		updateUserId = u.getUserId();
		updateTime = createTime;
	}
	@Override
	protected void beforeUpdate() {
		User u = ThreadUser.get();
		updateUserId = u.getUserId();
		updateTime = new Date();
	}
	
	@Resource
	public void setNewsTypeService(NewsTypeService newsTypeService){
		this.service = newsTypeService;
	}
	
	public NewsTypeService getNewsTypeService(){
		return (NewsTypeService)this.service;
	}

	public void setNewsTypeParameter(NewsTypeParameter param){
		this.baseParameter = param;
	}
	public NewsTypeParameter getNewsTypeParameter(){
		return (NewsTypeParameter)baseParameter;
	}
	
	private Integer newsTypeId;
	private String title;
	private Integer seq;
	private Short status;
	private Date createTime;
	private Integer createUserId;
	private Date updateTime;
	private Integer updateUserId;

	public void setNewsTypeId(Integer newsTypeId){
		this.newsTypeId = newsTypeId;
	}
	public Integer getNewsTypeId(){
		return this.newsTypeId;
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