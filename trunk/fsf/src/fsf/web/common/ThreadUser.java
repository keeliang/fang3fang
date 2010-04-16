package fsf.web.common;

import fsf.beans.sys.user.User;

public class ThreadUser {
	private static final ThreadLocal<User> contextUser = new ThreadLocal<User>();
	public static User get(){
		return contextUser.get();
	}
	public static void set(User user){
		contextUser.set(user);
	}
}
