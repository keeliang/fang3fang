package fsf.dao.info.newscomment;

import org.springframework.stereotype.Repository;

import fsf.beans.info.newscomment.NewsComment;
import chance.base.dao.BaseDao;

@Repository
public class NewsCommentDaoImpl extends BaseDao<NewsComment> implements NewsCommentDao{
	public NewsCommentDaoImpl() {
		super(NewsComment.class);
	}
}
