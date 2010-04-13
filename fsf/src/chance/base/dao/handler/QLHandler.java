package chance.base.dao.handler;

public interface QLHandler {
	/**
	 * generate codition clause like userId = :_ne_userId
	 * @param condition   clause condition like "=" , in ql-regular.xml condition element
	 * @param colName     clause column name like "userId" 
	 * @param parameter   like "_ne_userId"
	 * @param value       properties _ne_userId value
	 * @return
	 * @throws Exception
	 */
	public String getClause(String condition,String colName,String parameter,Object value)throws Exception;
	/**
	 * generate value,BaseDao will set this value to jpql/hql/sql
	 * @param value
	 * @return
	 */
	public Object getValue(Object value);
}