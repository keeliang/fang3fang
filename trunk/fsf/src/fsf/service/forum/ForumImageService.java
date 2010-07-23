package fsf.service.forum;

import java.util.List;

import chance.base.service.Service;
import fsf.beans.forum.ForumImage;

public interface ForumImageService extends Service<ForumImage>{
	/**
	 * get the forum image to the cache
	 * @return
	 */
	public List<ForumImage> getForumImageCache();
}
