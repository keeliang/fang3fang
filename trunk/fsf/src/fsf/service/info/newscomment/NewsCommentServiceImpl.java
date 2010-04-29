package fsf.service.info.newscomment;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import fsf.beans.info.newscomment.NewsComment;
import fsf.dao.info.newscomment.NewsCommentDao;
import chance.base.service.BaseService;
@Service
public class NewsCommentServiceImpl extends BaseService<NewsComment> implements NewsCommentService {
	@Resource
	public void setNewsCommentDao(NewsCommentDao newsCommentDao){
		dao = newsCommentDao;
	}
}
