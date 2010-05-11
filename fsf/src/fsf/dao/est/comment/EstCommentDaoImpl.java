package fsf.dao.est.comment;

import org.springframework.stereotype.Repository;

import fsf.beans.est.comment.EstComment;
import chance.base.dao.BaseDao;

@Repository
public class EstCommentDaoImpl extends BaseDao<EstComment> implements EstCommentDao{
	public EstCommentDaoImpl() {
		super(EstComment.class);
	}
}
