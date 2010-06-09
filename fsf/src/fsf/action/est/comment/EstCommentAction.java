package fsf.action.est.comment;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import chance.base.BaseParameter;
import chance.base.action.BaseAction;
import chance.common.PageView;
import chance.common.QueryResult;
import fsf.beans.est.comment.EstComment;
import fsf.beans.sys.user.User;
import fsf.service.est.comment.EstCommentService;
import fsf.web.common.ThreadUser;

@Controller
@Scope("prototype")
public class EstCommentAction extends BaseAction<EstComment> {
	
	public EstCommentAction() {
		super(EstComment.class, new String[] { "commentId" });
	}
	
	private PageView<EstComment> commentPageView;
	
	public String ajaxEstCommentList()throws Exception{
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
			QueryResult<EstComment> queryResult = service.doPaginationQuery(baseParameter);
			commentPageView = new PageView<EstComment>(baseParameter.getMaxResults(),baseParameter.getCurrentPage());
			commentPageView.setQueryResult(queryResult);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		return SUCCESS;
	}
	
	public String ajaxCommitComment()throws Exception{
		try {
			EstComment ec = new EstComment();
			ec.setContent(content);
			ec.setEstateId(estateId);
			ec.setType(type);
			ec.setStatus((short)1);
			ec.setIp(getHttpServletRequest().getRemoteAddr());
			ec.setCreateUserId(ThreadUser.get().getUserId());
			ec.setUpdateUserId(ThreadUser.get().getUserId());
			Date d = new Date();
			ec.setCreateTime(d);
			ec.setUpdateTime(d);
			service.persist(ec);
		} catch (Exception e) {
			e.printStackTrace();
			addActionError("添加留言失败");
		}
		return ajaxEstCommentList();
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
	
	private Integer commentId;
	private Integer estateId;
	private Short type;
	private String content;
	private String ip;
	private Short status;
	private Date createTime;
	private Integer createUserId;
	private Date updateTime;
	private Integer updateUserId;

	
	public PageView<EstComment> getCommentPageView() {
		return commentPageView;
	}

	public void setCommentPageView(PageView<EstComment> commentPageView) {
		this.commentPageView = commentPageView;
	}

	public Integer getCommentId() {
		return commentId;
	}

	public void setCommentId(Integer commentId) {
		this.commentId = commentId;
	}

	public void setEstateId(Integer estateId){
		this.estateId = estateId;
	}
	public Integer getEstateId(){
		return this.estateId;
	}
	public void setType(Short type){
		this.type = type;
	}
	public Short getType(){
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