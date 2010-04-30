package fsf.service.info.newstype;

import chance.exception.ExceptionCode;

public enum NewsTypeExceptionCode implements ExceptionCode {
	/**
	 * delete association
	 */
	DELETE_ASSOCIATION("newsType_delete_association");
	
	private String code;

	NewsTypeExceptionCode(String code) {
		this.code = code;
	}
	public String getCode() {
		return code;
	}
}
