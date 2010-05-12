package chance.base.dao.handler;

import java.util.List;
import java.util.Map;

public class InQLHandler extends DefaultQLHandler {

	@Override
	public String getClause(String condition, String colName,
			String queryCondition, Object value) throws Exception {
		if (value != null
				&& ((value instanceof List && ((List) value).size() > 0) || (value instanceof Object[] && ((Object[]) value).length > 0))) {
			Object[] valueArray;
			if (value instanceof List) {
				valueArray = ((List) value).toArray();
			} else {
				valueArray = (Object[]) value;
			}
			StringBuffer sb = new StringBuffer();
			sb.append(" and " + colName + " in (");
			for (int i = 0; i < valueArray.length; i++) {
				if(valueArray[i]!=null)
					sb.append(":" + queryCondition + "_" + i + ",");
			}
			sb.deleteCharAt(sb.length() - 1);
			sb.append(")");
			return sb.toString();
		}
		return "";
	}

	@Override
	public Object getValue(Object value) {
		if (value != null
				&& ((value instanceof List && ((List) value).size() > 0) || (value instanceof Object[] && ((Object[]) value).length > 0))) {
			return super.getValue(value);
		}
		return null;
	}

	@Override
	public void setParameterValue(Map<String, Object> mapParameter,
			String queryCondition, Object value) {
		if (value != null
				&& ((value instanceof List && ((List) value).size() > 0) || (value instanceof Object[] && ((Object[]) value).length > 0))) {
			Object[] valueArray;
			if (value instanceof List) {
				valueArray = ((List) value).toArray();
			} else {
				valueArray = (Object[]) value;
			}
			for (int i = 0; i < valueArray.length; i++) {
				if(valueArray[i]!=null)
					mapParameter.put(queryCondition + "_" + i, valueArray[i]);
			}
		}
	}

}
