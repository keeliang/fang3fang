package chance.base.dao.handler;

public class DefaultQLHandler implements QLHandler {

	public String getClause(String condition,String colName,String parameter,Object value)throws Exception {
		return colName+condition+":"+parameter;
	}

	public Object getValue(Object value) {
		return value;
	}
}