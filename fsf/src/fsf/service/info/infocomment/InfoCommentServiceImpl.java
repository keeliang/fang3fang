package fsf.service.info.infocomment;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import fsf.beans.info.infocomment.InfoComment;
import fsf.dao.info.infocomment.InfoCommentDao;
import chance.base.service.BaseService;
@Service
public class InfoCommentServiceImpl extends BaseService<InfoComment> implements InfoCommentService {
	@Resource
	public void setInfoCommentDao(InfoCommentDao infoCommentDao){
		dao = infoCommentDao;
	}
}
