package chance.base.dao.handler;

import java.util.List;
import java.util.Map;

public class InQLHandler extends DefaultQLHandler{

	@Override
	public String getClause(String condition, String colName, String queryCondition,
			Object value) throws Exception {
		if(value!=null && value instanceof List && ((List)value).size()>0){
			List listValue = (List)value;
			StringBuffer sb = new StringBuffer();
			sb.append(" and "+colName +" in (");
			for(int i = 0 ;i<listValue.size();i++){
				sb.append(":"+queryCondition+"_"+i+",");
			}
			sb.deleteCharAt(sb.length()-1);
			sb.append(")");
			return sb.toString();
		}
		return "";
	}

	@Override
	public Object getValue(Object value) {
		if(value!=null && value instanceof List && ((List)value).size()>0){
			return super.getValue(value);	
		}
		return null;
	}

	@Override
	public void setParameterValue(Map<String, Object> mapParameter,
			String queryCondition, Object value) {
		if(value!=null && value instanceof List && ((List)value).size()>0){
			List<String> listValue = (List)value;
			for(int i = 0 ;i<listValue.size();i++){
				mapParameter.put(queryCondition+"_"+i,listValue.get(i));
			}
		}
	}

	
}
