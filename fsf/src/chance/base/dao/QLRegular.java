package chance.base.dao;

import java.io.Serializable;

public class QLRegular implements Serializable {
	/**
	 * key mark property name, like this format "_"+operation name,in ql-regular.xml key element
	 */
	private String key;
	/**
	 * clause condition in ql-regular.xml condiction element
	 */
	private String condition;
	/**
	 * clause and parameter value generater class,read yws.s20s25h33.framework.component.dao.qlhandler for more
	 */
	private String handler;
	
	public QLRegular(){
		
	}
	
	public QLRegular(String key, String condition, String handler){
		this.key = key;
		this.condition = condition;
		this.handler = handler;
	}
	
	
	
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
	public String getHandler() {
		return handler;
	}
	public void setHandler(String handler) {
		this.handler = handler;
	}
	public String getKey() {
		return key;
	}
	public void setKey(String key) {
		this.key = key;
	}
}
