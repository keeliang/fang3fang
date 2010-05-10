package chance.base.service;

import java.io.Serializable;
import java.util.List;

import chance.base.AdvancedQueryParameter;
import chance.base.BaseParameter;
import chance.common.QueryResult;
/**
 * 
 * @author yws
 *
 * @param <E>
 */
public interface Service<E> {
	/**
	 * Persist object
	 * 
	 * @param entity
	 */
	public void persist(E entity);

	/**
	 * Remove instance
	 * 
	 * @param id
	 * @throws DaoException
	 */
	public void deleteByPK(Serializable... id);

	/**
	 * Remove a persistent instance
	 * 
	 * @param entity
	 */
	public void delete(E entity);
	/**
	 * delete entity by property though hql
	 * @param propName
	 * @param propValue
	 */
	public void deleteByProperty(String propName,Object propValue);
	/**
	 * delete entity by properties though hql
	 * @param propName
	 * @param propValue
	 */
	public void deleteByProperties(String[] propName,Object[] propValue);

	/**
	 * Update the persistent instance with the identifier of the given detached
	 * instance.
	 * 
	 * @param entity
	 */
	public void update(E entity);
	/**
	 * update property batch 
	 * @param conditionName  where clause condiction property name
	 * @param conditionValue  where clause condiction property value
	 * @param propertyName  update clause property name array
	 * @param propertyValue  update clase property value array
	 */
	public void updateByProperties(String conditionName,Serializable[] conditionValue,String[] propertyName,Serializable[] propertyValue);
	/**
	 * update property batch
	 * @param conditionName  where clause condiction property name
	 * @param conditionValue where clause condiction property value
	 * @param propertyName  update clause property name
	 * @param propertyValue update clase property value
	 */
	public void updateByProperty(String conditionName,Serializable[] conditionValue,String propertyName,Serializable propertyValue);
	/**
	 * cautiously use this method, through delete then insert to update an entity 
	 * when need to update primary key value (unsupported) use this method 
	 * @param entity  updated entity
	 * @param oldId  already existed primary key
	 */
	public void update(E entity,Serializable oldId);

	/**
	 * Merge the state of the given entity into the current persistence context.
	 * 
	 * @param entity
	 */
	public E merge(E entity);

	/**
	 * Get persistent object
	 * 
	 * @param id
	 * @return
	 */
	public E get(Serializable id);
	
	/**
	 * get an entity by properties
	 * @param propName
	 * @param propValue
	 * @return
	 */
	public E getByProerties(String[] propName,Object[] propValue);
	
	/**
	 * get an entity by property
	 * @param propName
	 * @param propValue
	 * @return
	 */
	public E getByProerty(String propName,Object propValue);

	/**
	 * load persistent object
	 * 
	 * @param id
	 * @return
	 */
	public E load(Serializable id);

	/**
	 * Completely clear the session.
	 */
	public void clear();

	/**
	 * Remove this instance from the session cache.
	 */
	public void evict(E entity);
	
	/**
	 * query by param
	 * @param param
	 * @return
	 */
	public List<E> doQuery(BaseParameter param) throws Exception;

	/**
	 * Query all 
	 * @return
	 */
	public List<E> doQueryAll();

	/**
	 * Query by pagination
	 * @param param
	 * @return
	 * @throws Exception
	 */
	public QueryResult<E> doPaginationQuery(BaseParameter param) throws Exception;
	/**
	 * advanced query need to improve,lack of pagination temporary  
	 * @param param
	 * @return
	 * @throws Exception
	 */
	public List<E> doAdvancedQuery (AdvancedQueryParameter param);

}
