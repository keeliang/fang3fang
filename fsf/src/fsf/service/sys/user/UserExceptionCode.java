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
	 * insert user when userCode duplicate
	 */
	USER_CODE_DUPLICATE("g_user_code_duplicate");
	
	private String code;

	UserExceptionCode(String code) {
		this.code = code;
	}
	public String getCode() {
		return code;
	}
}