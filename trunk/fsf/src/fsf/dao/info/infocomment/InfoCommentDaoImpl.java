package fsf.dao.info.infocomment;

import org.springframework.stereotype.Repository;

import fsf.beans.info.infocomment.InfoComment;
import chance.base.dao.BaseDao;

@Repository
public class InfoCommentDaoImpl extends BaseDao<InfoComment> implements InfoCommentDao{
	public InfoCommentDaoImpl() {
		super(InfoComment.class);
	}
}
