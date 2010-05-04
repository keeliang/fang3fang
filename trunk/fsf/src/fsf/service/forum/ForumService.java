package fsf.service.forum;

import fsf.beans.sys.user.User;

public interface ForumService {

	/**
	 * check user in table forum_users
	 * @param userCode
	 * @return true:if exists false:no exists
	 */
	public boolean checkForumUser(String userCode);
	
	/**
	 * add a new forum user
	 * @param user
	 */
	public void addForumUser(User user);
}
