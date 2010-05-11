package chance.base.dao.handler;

import java.util.Map;

public class DefaultQLHandler implements QLHandler {

	public String getClause(String condition,String colName,String queryCondition,Object value)throws Exception {
		return " and "+colName+" "+condition+":"+queryCondition;
	}

	public Object getValue(Object value) {
		return value;
	}

	public void setParameterValue(Map<String, Object> mapParameter,
			String queryCondition, Object value) {
		if(value!=null){
			mapParameter.put(queryCondition, value);
		}
	}
}