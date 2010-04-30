package fsf.service.info.newstype;

import java.io.Serializable;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import chance.base.service.BaseService;
import chance.exception.ServiceException;
import fsf.beans.info.news.News;
import fsf.beans.info.newstype.NewsType;
import fsf.dao.info.news.NewsDao;
import fsf.dao.info.newstype.NewsTypeDao;
@Service
public class NewsTypeServiceImpl extends BaseService<NewsType> implements NewsTypeService {
	
	@Override
	public void deleteByPK(Serializable... id) {
		for(Serializable delId :id){
			News o = newsDao.getByProerty("newsTypeId", Integer.parseInt(delId.toString()));
			if(o!=null){
				ServiceException se = new ServiceException("can not delete NewsType that id is "+delId+" because of some news associate it");
				se.setExceptionCode(NewsTypeExceptionCode.DELETE_ASSOCIATION);
				se.setParameters(new String[]{dao.get(delId).getTitle()});
				throw se;				
			}
		}
		super.deleteByPK(id);
	}
	
	@Resource
	private NewsDao newsDao;
	
	
	@Resource
	public void setNewsTypeDao(NewsTypeDao newsTypeDao){
		dao = newsTypeDao;
	}
}
