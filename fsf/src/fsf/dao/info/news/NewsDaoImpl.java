package fsf.dao.info.news;

import org.springframework.stereotype.Repository;

import fsf.beans.info.news.News;
import chance.base.dao.BaseDao;

@Repository
public class NewsDaoImpl extends BaseDao<News> implements NewsDao{
	public NewsDaoImpl() {
		super(News.class);
	}
}
