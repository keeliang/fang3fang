package fsf.service.forum;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import fsf.beans.forum.ForumUser;
import fsf.beans.forum.ForumUserGroups;
import fsf.beans.sys.user.User;
import fsf.dao.forum.ForumDao;
@Service
public class ForumServiceImpl implements ForumService {
	ForumDao forumDao;

	public void addForumUser(User user) {
		ForumUser forumUser = new ForumUser();
		ForumUserGroups forumUserGroups = new ForumUserGroups();
		forumUser.setSysUserCode(user.getUserCode());
		forumUser.setUsername(user.getUserName());
		forumUser.setUserPassword(user.getPassword());
		forumUser.setUserActive(user.getStatus());
		forumUser.setUserRegdate(user.getCreateDate());
		forumUser.setUserEmail(user.getEmail());
		forumUser.setUserMsnm(user.getMsn());
		forumUser.setUserFrom(user.getAddress());
		
		/*forumUser.setUserSessionTime(0);
		forumUser.setUserSessionPage(0);
		forumUser.setUserLastvisit(new Date());
		forumUser.setUserPosts(1);
		forumUser.setUserDateformat("%d/%M/%Y %H:%i");
		forumUser.setUserNewPrivmsg(0);
		forumUser.setUserUnreadPrivmsg(0);
		forumUser.setUserViewemail(0);
		forumUser.setUserAttachsig(1);
		forumUser.setUserAllowhtml(0);
		forumUser.setUserAllowsmilies(1);
		forumUser.setUserAllowavatar(1);
		forumUser.setUserAllowPm(0);
		forumUser.setUserAllowViewonline(1);
		forumUser.setUserNotify(1);
		forumUser.setUserNotifyAlways(0);
		forumUser.setUserNotifyText(0);
		forumUser.setUserNotifyPm(0);*/
		forumUser.setUserTimezone("");
		forumUser.setUserLang("");
		forumUser.setUserDateformat("%d/%M/%Y %H:%i");
		forumUser.setUserNewPrivmsg(0);
		forumUser.setUserUnreadPrivmsg(0);
		forumUser.setUserAvatarType(0);
		forumUser.setRankId(0);
		int userId = forumDao.save(forumUser);
		
		forumUserGroups.setGroupId(1);
		forumUserGroups.setUserId(userId);
		forumDao.save(forumUserGroups);
	}

	public boolean checkForumUser(String userCode) {
		boolean flag = forumDao.checkForumUser(userCode);
		return flag;
	}
	
	@Resource
	public void setForumDao(ForumDao forumDao) {
		this.forumDao = forumDao;
	}

}
