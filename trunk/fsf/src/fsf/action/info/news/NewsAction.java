package fsf.action.info.news;

import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import chance.base.BaseParameter;
import chance.base.action.BaseAction;
import fsf.action.info.newstype.NewsTypeParameter;
import fsf.beans.info.news.News;
import fsf.beans.info.newstype.NewsType;
import fsf.beans.sys.user.User;
import fsf.service.info.news.NewsService;
import fsf.service.info.newstype.NewsTypeService;
import fsf.web.common.ThreadUser;

@Controller
@Scope("prototype")
public class NewsAction extends BaseAction<News> {

	public NewsAction() {
		super(News.class, new String[] { "newsId" });
	}
	
	@Resource
	private NewsTypeService newsTypeService;
	
	private List<NewsType> listNewsType ;
	
	/**
	 * 不分页资讯首页
	 * @return
	 */
	public String doIndexList() throws Exception{
		NewsTypeParameter param = new NewsTypeParameter();
		param.set_ne_status((short)1);
		param.getSortedConditions().put("seq", BaseParameter.SORTED_ASC);
		
		listNewsType = newsTypeService.doQuery(param);
		
		if(listNewsType!=null && listNewsType.size()>0){
			NewsParameter paramNews = new NewsParameter();
			paramNews.set_ne_status((short)1);
			paramNews.setCurrentPage(-1);
			paramNews.setMaxResults(-1);
			paramNews.setTopCount(10);
			paramNews.getSortedConditions().put("updateTime", BaseParameter.SORTED_DESC);
			for(Iterator<NewsType> it = listNewsType.iterator();it.hasNext();){
				NewsType o = it.next();
				paramNews.set_ne_newsTypeId(o.getNewsTypeId());
				o.setListNews(service.doPaginationQuery(paramNews).getResultList());
			}
		}
		return SUCCESS;
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
	public void setNewsService(NewsService newsService) {
		this.service = newsService;
	}

	public NewsService getNewsService() {
		return (NewsService) this.service;
	}

	public void setNewsParameter(NewsParameter param) {
		this.baseParameter = param;
	}

	public NewsParameter getNewsParameter() {
		return (NewsParameter) baseParameter;
	}

	private Integer newsId;
	private String newsTitle;
	private String newsContent;
	private Integer newsTypeId;
	private Short status;
	private Date createTime;
	private Integer createUserId;
	private Date updateTime;
	private Integer updateUserId;

	public void setNewsId(Integer newsId) {
		this.newsId = newsId;
	}

	public Integer getNewsId() {
		return this.newsId;
	}

	public String getNewsTitle() {
		return newsTitle;
	}

	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}

	public String getNewsContent() {
		return newsContent;
	}

	public void setNewsContent(String newsContent) {
		this.newsContent = newsContent;
	}

	public Integer getNewsTypeId() {
		return newsTypeId;
	}

	public void setNewsTypeId(Integer newsTypeId) {
		this.newsTypeId = newsTypeId;
	}

	public void setStatus(Short status) {
		this.status = status;
	}

	public Short getStatus() {
		return this.status;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getCreateTime() {
		return this.createTime;
	}

	public void setCreateUserId(Integer createUserId) {
		this.createUserId = createUserId;
	}

	public Integer getCreateUserId() {
		return this.createUserId;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public Date getUpdateTime() {
		return this.updateTime;
	}

	public void setUpdateUserId(Integer updateUserId) {
		this.updateUserId = updateUserId;
	}

	public Integer getUpdateUserId() {
		return this.updateUserId;
	}


	public List<NewsType> getListNewsType() {
		return listNewsType;
	}


	public void setListNewsType(List<NewsType> listNewsType) {
		this.listNewsType = listNewsType;
	}

}