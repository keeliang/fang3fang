package fsf.dao.forum;

import java.util.List;
import chance.base.dao.Dao;
import fsf.beans.forum.ForumImage;

public interface ForumImageDao extends Dao<ForumImage>{
	public List<ForumImage> getForumImageCache();
}
