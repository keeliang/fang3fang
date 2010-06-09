package fsf.action.info.infocomment;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import chance.base.BaseParameter;
import chance.base.action.BaseAction;
import chance.common.PageView;
import chance.common.QueryResult;
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
	
	private PageView<InfoComment> commentPageView;
	
	public String doInfoCommentList()throws Exception{
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
			QueryResult<InfoComment> queryResult = service.doPaginationQuery(baseParameter);
			commentPageView = new PageView<InfoComment>(baseParameter.getMaxResults(),baseParameter.getCurrentPage());
			commentPageView.setQueryResult(queryResult);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		return SUCCESS;
	}
	
	public String doCommitInfoComment()throws Exception{
		try {
			InfoComment ic = new InfoComment();
			ic.setContent(content);
			ic.setInformationId(informationId);
			ic.setStatus((short)1);
			ic.setIp(getHttpServletRequest().getRemoteAddr());
			ic.setCreateUserId(ThreadUser.get().getUserId());
			ic.setUpdateUserId(ThreadUser.get().getUserId());
			Date d = new Date();
			ic.setCreateTime(d);
			ic.setUpdateTime(d);
			service.persist(ic);
		} catch (Exception e) {
			e.printStackTrace();
			addActionError("添加留言失败");
		}
		return doInfoCommentList();
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

	public PageView<InfoComment> getCommentPageView() {
		return commentPageView;
	}

	public void setCommentPageView(PageView<InfoComment> commentPageView) {
		this.commentPageView = commentPageView;
	}

}