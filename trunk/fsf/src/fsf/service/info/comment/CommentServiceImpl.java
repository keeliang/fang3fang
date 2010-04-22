package fsf.service.info.comment;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import fsf.beans.info.comment.Comment;
import fsf.dao.info.comment.CommentDao;
import chance.base.service.BaseService;
@Service
public class CommentServiceImpl extends BaseService<Comment> implements CommentService {
	@Resource
	public void setCommentDao(CommentDao commentDao){
		dao = commentDao;
	}
}
