package fsf.dao.info.comment;

import org.springframework.stereotype.Repository;

import fsf.beans.info.comment.Comment;
import chance.base.dao.BaseDao;

@Repository
public class CommentDaoImpl extends BaseDao<Comment> implements CommentDao{
	public CommentDaoImpl() {
		super(Comment.class);
	}
}
