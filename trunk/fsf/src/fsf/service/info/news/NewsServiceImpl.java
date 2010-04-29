package fsf.service.info.news;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import fsf.beans.info.news.News;
import fsf.dao.info.news.NewsDao;
import chance.base.service.BaseService;
@Service
public class NewsServiceImpl extends BaseService<News> implements NewsService {
	@Resource
	public void setNewsDao(NewsDao newsDao){
		dao = newsDao;
	}
}
