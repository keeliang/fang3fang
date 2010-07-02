package fsf.service.sys.user;

import chance.exception.ExceptionCode;

public enum UserExceptionCode implements ExceptionCode {
	/**
	 * login user not exists
	 */
	USER_NOT_EXISTS("g_user_not_exists"),
	/**
	 * login user password error
	 */
	USER_PASSWORD_ERROR("g_user_password_error"),
	/**
	 * no privilege login admin
	 */
	USER_NO_PRIVILEGE_ADMIN("g_user_no_privilege_login_admin"),
	/**
	 * insert user when userCode duplicate
	 */
	USER_CODE_DUPLICATE("g_user_code_duplicate"),
	/**
	 * user is exists
	 */
	USER_EXISTS("g_user_exists");
	
	private String code;

	UserExceptionCode(String code) {
		this.code = code;
	}
	public String getCode() {
		return code;
	}
}
