package fsf.dao.forum;

import java.io.Serializable;

public interface ForumDao {

	/**
	 * check user in table forum_users
	 * @param username
	 * @return true:if exists false:no exists
	 * @throws RuntimeException
	 */
	public boolean checkForumUser(String username) throws RuntimeException;
	
	/**
	 * add a new forum user
	 * @param entity
	 * @return
	 * @throws RuntimeException
	 */
	public int save(Serializable entity) throws RuntimeException;
}
