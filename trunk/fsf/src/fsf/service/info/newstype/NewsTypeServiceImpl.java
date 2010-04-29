package fsf.service.info.newstype;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import fsf.beans.info.newstype.NewsType;
import fsf.dao.info.newstype.NewsTypeDao;
import chance.base.service.BaseService;
@Service
public class NewsTypeServiceImpl extends BaseService<NewsType> implements NewsTypeService {
	@Resource
	public void setNewsTypeDao(NewsTypeDao newsTypeDao){
		dao = newsTypeDao;
	}
}
