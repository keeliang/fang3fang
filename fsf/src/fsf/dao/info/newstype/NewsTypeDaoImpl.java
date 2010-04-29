package fsf.dao.info.newstype;

import org.springframework.stereotype.Repository;

import fsf.beans.info.newstype.NewsType;
import chance.base.dao.BaseDao;

@Repository
public class NewsTypeDaoImpl extends BaseDao<NewsType> implements NewsTypeDao{
	public NewsTypeDaoImpl() {
		super(NewsType.class);
	}
}
