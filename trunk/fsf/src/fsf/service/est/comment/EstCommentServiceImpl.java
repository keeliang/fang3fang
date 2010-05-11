package fsf.service.est.comment;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import fsf.beans.est.comment.EstComment;
import fsf.dao.est.comment.EstCommentDao;
import chance.base.service.BaseService;
@Service
public class EstCommentServiceImpl extends BaseService<EstComment> implements EstCommentService {
	@Resource
	public void setEstCommentDao(EstCommentDao estCommentDao){
		dao = estCommentDao;
	}
}
