package fsf.action.info.newscomment;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import chance.base.BaseParameter;
import chance.base.action.BaseAction;
import chance.common.PageView;
import chance.common.QueryResult;
import fsf.beans.info.newscomment.NewsComment;
import fsf.beans.sys.user.User;
import fsf.service.info.newscomment.NewsCommentService;
import fsf.web.common.ThreadUser;

@Controller
@Scope("prototype")
public class NewsCommentAction extends BaseAction<NewsComment> {
	
	public NewsCommentAction() {
		super(NewsComment.class, new String[] { "commentId" });
	}
	
	private PageView<NewsComment> commentPageView;
	
	public String doNewsCommentList()throws Exception{
		try {
			if(baseParameter==null){
				return SUCCESS;
			}
			if(baseParameter.getMaxResults()==null){
				baseParameter.setMaxResults(10);
			}
			if(baseParameter.getCurrentPage()==null){
				baseParameter.setCurrentPage(1);
			}
			baseParameter.getSortedConditions().put("createTime",BaseParameter.SORTED_DESC);
			QueryResult<NewsComment> queryResult = service.doPaginationQuery(baseParameter);
			commentPageView = new PageView<NewsComment>(baseParameter.getMaxResults(),baseParameter.getCurrentPage());
			commentPageView.setQueryResult(queryResult);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		return SUCCESS;
	}
	
	public String doCommitNewsComment()throws Exception{
		try {
			NewsComment nc = new NewsComment();
			nc.setContent(content);
			nc.setNewsId(newsId);
			nc.setStatus((short)1);
			nc.setIp(getHttpServletRequest().getRemoteAddr());
			nc.setCreateUserId(ThreadUser.get().getUserId());
			nc.setUpdateUserId(ThreadUser.get().getUserId());
			Date d = new Date();
			nc.setCreateTime(d);
			nc.setUpdateTime(d);
			service.persist(nc);
		} catch (Exception e) {
			e.printStackTrace();
			addActionError("添加留言失败");
		}
		return doNewsCommentList();
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
	public void setNewsCommentService(NewsCommentService newsCommentService){
		this.service = newsCommentService;
	}
	
	public NewsCommentService getNewsCommentService(){
		return (NewsCommentService)this.service;
	}

	public void setNewsCommentParameter(NewsCommentParameter param){
		this.baseParameter = param;
	}
	public NewsCommentParameter getNewsCommentParameter(){
		return (NewsCommentParameter)baseParameter;
	}
	
	private Integer commentId;
	private String content;
	private Integer newsId;
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

	public Integer getNewsId() {
		return newsId;
	}

	public void setNewsId(Integer newsId) {
		this.newsId = newsId;
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

	public PageView<NewsComment> getCommentPageView() {
		return commentPageView;
	}
	public void setCommentPageView(PageView<NewsComment> commentPageView) {
		this.commentPageView = commentPageView;
	}
}