package chance.base.dao.handler;

import java.util.Map;

public class NullQLHandler extends DefaultQLHandler{

	@Override
	public String getClause(String condition,String colName, String parameter, Object value) throws Exception{
		if(value instanceof Boolean){
			if((Boolean)value){
				return " and "+colName+" is null ";
			}else{
				return " and "+colName+" is not null ";
			}
		}
		throw new Exception("condition ["+condition +"] value must be Boolean! ");
	}
	
	@Override
	public void setParameterValue(Map<String, Object> mapParameter,String queryCondition, Object value) {}
}
