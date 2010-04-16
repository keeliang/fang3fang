package chance.tag.dao;

public interface TagDao {
	
	/**
	 * query the value of the type name
	 * @return
	 * @throws Exception
	 */
	public String getTypeName(String tblName, String key, String keyValue, 
			String colName) throws Exception;
}
