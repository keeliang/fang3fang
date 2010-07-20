package fsf.dao.forum;

import org.springframework.stereotype.Repository;

import chance.base.dao.BaseDao;
import fsf.beans.forum.ForumImage;

@Repository
public class ForumImageDaoImpl extends BaseDao<ForumImage> implements ForumImageDao{
	public ForumImageDaoImpl() {
		super(ForumImage.class);
	}
}
