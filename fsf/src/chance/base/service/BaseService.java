package chance.base.service;

import java.io.Serializable;
import java.util.List;

import chance.base.AdvancedQueryParameter;
import chance.base.BaseParameter;
import chance.base.dao.Dao;
import chance.common.QueryResult;
import chance.exception.NoRollbackServiceException;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
/**
 * 
 * @author yws
 *
 * @param <E>
 */
@Transactional(noRollbackFor=NoRollbackServiceException.class)
public class BaseService<E> implements Service<E>{
	
	protected Dao<E> dao;
	
	public void persist(E entity){
		dao.persist(entity);
	}

	public void deleteByPK(Serializable... id) {
		dao.deleteByPK(id);
	}

	public void delete(E entity) {
		dao.delete(entity);
	}
	
	public void deleteByProperties(String[] propName, Object[] propValue) {
		dao.deleteByProperties(propName, propValue);
	}

	public void deleteByProperty(String propName, Object propValue) {
		dao.deleteByProperty(propName, propValue);
	}
	
	@Transactional(readOnly=true,propagation=Propagation.NOT_SUPPORTED)
	public E get(Serializable id) {
		return dao.get(id);
	}
	@Transactional(readOnly=true,propagation=Propagation.NOT_SUPPORTED)
	public E getByProerties(String[] propName, Object[] propValue) {
		return dao.getByProerties(propName, propValue);
	}
	@Transactional(readOnly=true,propagation=Propagation.NOT_SUPPORTED)
	public E getByProerty(String propName, Object propValue) {
		return dao.getByProerty(propName, propValue);
	}
	@Transactional(readOnly=true,propagation=Propagation.NOT_SUPPORTED)
	public E load(Serializable id) {
		return dao.load(id);
	}
	@Transactional(readOnly=true,propagation=Propagation.NOT_SUPPORTED)
	public List<E> queryByProerties(String[] propName, Object[] propValue) {
		return dao.queryByProerties(propName, propValue);
	}
	@Transactional(readOnly=true,propagation=Propagation.NOT_SUPPORTED)
	public List<E> queryByProerties(String propName, Object propValue) {
		return dao.queryByProerties(propName, propValue);
	}

	public E merge(E entity) {
		return dao.merge(entity);
	}
	public void update(E entity) {
		dao.update(entity);
	}
	
	public void updateByProperties(String conditionName,
			Serializable[] conditionValue, String[] propertyName,
			Serializable[] propertyValue) {
		dao.updateByProperties(conditionName, conditionValue, propertyName, propertyValue);
	}

	public void updateByProperty(String conditionName,
			Serializable[] conditionValue, String propertyName,
			Serializable propertyValue) {
		dao.updateByProperty(conditionName, conditionValue, propertyName, propertyValue);
	}
	
	public void update(E entity, Serializable oldId) {
		dao.update(entity, oldId);
	}
	
	@Transactional(readOnly=true,propagation=Propagation.NOT_SUPPORTED)
	public List<E> doQuery(BaseParameter param) throws Exception{
		return dao.doQuery(param);
	}
	
	@Transactional(readOnly=true,propagation=Propagation.NOT_SUPPORTED)
	public QueryResult<E> doPaginationQuery(BaseParameter param) throws Exception {
		return dao.doPaginationQuery(param);
	}
	
	@Transactional(readOnly=true,propagation=Propagation.NOT_SUPPORTED)
	public List<E> doQueryAll() {
		return dao.doQueryAll();
	}

	public void evict(E entity) {
		dao.evict(entity);
	}
	
	public void clear() {
		dao.clear();
	}
	
	@Transactional(readOnly=true,propagation=Propagation.NOT_SUPPORTED)
	public List<E> doAdvancedQuery(AdvancedQueryParameter param) {
		return dao.doAdvancedQuery(param);
	}
	
}