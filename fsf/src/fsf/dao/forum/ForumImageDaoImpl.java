package fsf.dao.forum;

import java.util.ArrayList;
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
		Query query = getSession().createQuery("select o,oo.forumName from ForumImage o,ForumForums oo where o.forumId=oo.forumId order by o.forumId");
		List<Object[]> list = query.list();
		List<ForumImage> result = new ArrayList<ForumImage>();
		for(Object[] oo:list){
			((ForumImage)oo[0]).setForumName((String)oo[1]);
			result.add((ForumImage)oo[0]);
		}
		return result;
	}
}
