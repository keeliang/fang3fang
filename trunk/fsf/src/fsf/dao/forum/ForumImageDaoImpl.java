package fsf.dao.forum;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import chance.base.dao.BaseDao;
import fsf.beans.forum.ForumImage;

@Repository
public class ForumImageDaoImpl extends BaseDao<ForumImage> implements ForumImageDao{
	public ForumImageDaoImpl() {
		super(ForumImage.class);
	}
	
	public List<ForumImage> getForumImageCache(){
		Query query = getSession().createQuery("from ForumImage order by forumId");
		List<ForumImage> list = query.list();
		
		return list;
	}
}
