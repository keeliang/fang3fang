package fsf.action.info.news;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import chance.base.action.BaseAction;
import fsf.beans.info.news.News;
import fsf.service.info.news.NewsService;

@Controller
@Scope("prototype")
public class NewsAction extends BaseAction<News> {

	public NewsAction() {
		super(News.class, new String[] { "newsId" });
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

}