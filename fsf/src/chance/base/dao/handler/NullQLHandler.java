package chance.base.dao.handler;

public class NullQLHandler extends DefaultQLHandler{

	@Override
	public String getClause(String condition,String colName, String parameter, Object value) throws Exception{
		if(value instanceof Boolean){
			if((Boolean)value){
				return parameter+" is null ";
			}else{
				return parameter+" is not null ";
			}
		}
		throw new Exception("condition ["+condition +"] value must be Boolean! ");
	}
}
