package fsf.service.forum;

import java.util.List;

import fsf.beans.forum.ForumImage;
import fsf.beans.sys.user.User;

public interface ForumService {

	/**
	 * check user in table forum_users
	 * @param userName
	 * @return true:if exists false:no exists
	 */
	public boolean checkForumUser(String userName);
	
	/**
	 * add a new forum user
	 * @param user
	 */
	public void addForumUser(User user);
}
