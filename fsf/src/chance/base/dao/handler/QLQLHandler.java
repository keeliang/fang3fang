package chance.base.dao.handler;

public class QLQLHandler extends DefaultQLHandler{
	
	@Override
	public String getClause(String condition, String colName, String parameter,
			Object value) throws Exception {

		return " ( "+value+" ) ";
	}
	
	@Override
	public Object getValue(Object value) {
		return null;
	}

}
