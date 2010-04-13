package chance.base.dao;

import java.io.Serializable;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import chance.base.AdvancedQueryParameter;
import chance.base.BaseParameter;
import chance.base.dao.handler.QLHandlerFactory;
import chance.common.QueryResult;
import chance.common.SystemInitListener;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.PropertyUtils;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class BaseDao<E> extends HibernateDaoSupport implements Dao<E> {

	@Resource(name = "sessionFactory")
	public void setSF(SessionFactory sessionFactory) {
		setSessionFactory(sessionFactory);
	}
	
	protected Class<E> entityClass;

	public BaseDao(Class<E> entityClass) {
		this.entityClass = entityClass;
	}
	
	public void persist(E entity) {
		getHibernateTemplate().save(entity);
		logger.info("persist " + entityClass.getName() + " value is " + entity);
	}

	public void deleteByPK(Serializable... id) {
		if(id!=null && id.length>0){
			for (int i = 0; i < id.length; i++) {
				E entity = get(id[i]);
				if(entity!=null){
					logger.info("delete " + entityClass.getName() + " value is "+ entity);
					getHibernateTemplate().delete(entity);
				}
			}
		}
	}

	public void delete(E entity) {
		getHibernateTemplate().delete(entity);
	}
	
	public void deleteByProperties(String[] propName,Object[] propValue){
		if(propName!=null && propName.length>0 && propValue!=null && propValue.length>0 && propValue.length==propName.length){
			StringBuffer sb = new StringBuffer("delete from "+entityClass.getName()+" o where 1=1 ");
			for(String name : propName){
				sb.append(" and o."+name+"=:"+name);
			}
			Query query = getSession().createQuery(sb.toString());
			for(int i=0;i<propName.length;i++){
				query.setParameter(propName[i], propValue[i]);
			}
			query.executeUpdate();
		}
	}
	
	public void deleteByProperty(String propName,Object propValue){
		deleteByProperties(new String[]{propName}, new Object[]{propValue});
	}

	public void update(E entity) {
		getHibernateTemplate().update(entity);
	}
	
	public void update(E entity,Serializable oldId){
		deleteByPK(oldId);
		persist(entity);
	}

	public E merge(E entity) {
		return (E) getHibernateTemplate().merge(entity);
	}

	public E get(Serializable id) {
		return (E) getHibernateTemplate().get(entityClass, id);
	}

	public E load(Serializable id) {
		return (E) getHibernateTemplate().load(entityClass, id);
	}

	public E getByProerties(String[] propName, Object[] propValue) {
		if(propName!=null && propName.length>0 && propValue!=null && propValue.length>0 && propValue.length==propName.length){
			StringBuffer sb = new StringBuffer("select o from "+entityClass.getName()+" o where 1=1 ");
			for(String name : propName){
				sb.append(" and o."+name+"=:"+name);
			}
			Query query = getSession().createQuery(sb.toString());
			for(int i=0;i<propName.length;i++){
				query.setParameter(propName[i], propValue[i]);
			}
			List<E> list = query.list();
			if(list!=null && list.size()>0)
				return list.get(0);
		}
		return null;
	}

	public E getByProerty(String propName, Object propValue) {
		return getByProerties(new String[]{propName}, new Object[]{propValue});
	}

	public Long countAll() {
		return (Long) getSession().createQuery(
				"select count(*) from " + entityClass.getName()).uniqueResult();
	}

	public Long count(BaseParameter param) throws Exception {
		StringBuffer hql = new StringBuffer("select count(*) from "+ entityClass.getName() + " o where 1=1 ");
		Map<String, Object> mapParameter = new HashMap<String, Object>();
		buildHql(hql, param, mapParameter);
		Query query = getSession().createQuery(hql.toString());
		setParameter(mapParameter, query);
		return (Long) query.uniqueResult();
	}
	/**
	 * 
	 */
	public List<E> doAdvancedQuery(AdvancedQueryParameter param){
		String[] propName = param.getPropName();
		String[] opt = param.getOpt(); 
		Object[] propValue = param.getPropValue();
		if(opt!=null&&opt.length>0&&
				propName!=null&&propName.length>0&&
				propValue!=null&&propValue.length>0&&
				opt.length==propName.length&&
				propName.length==propValue.length){
			Criteria criteria = getSession().createCriteria(entityClass);
			Class<Restrictions> clazz = Restrictions.class;
			Class[] paramType = new Class[]{String.class,Object.class};
			try {
				Object bean = entityClass.newInstance();
				Map<String,Object> map = new HashMap<String, Object>();
				for(int i=0;i<opt.length;i++){
					map.put(propName[i], propValue[i]);
				}
				for(int i=0;i<opt.length;i++){
					Method m = clazz.getMethod(opt[i], paramType);
					BeanUtils.populate(bean, map);
					criteria.add((Criterion)m.invoke(clazz, new Object[]{propName[i],PropertyUtils.getNestedProperty(bean, propName[i])}));
				}					
			}  catch (Exception e) {
				e.printStackTrace();
			} 
			if(param.getSortedConditions()!=null&&param.getSortedConditions().size()>0){
				Map<String,String> map = param.getSortedConditions();
				for(Iterator<String> it = param.getSortedConditions().keySet().iterator();it.hasNext();){
					String pm = it.next();
					if(BaseParameter.SORTED_DESC.equals(map.get(pm))){
						criteria.addOrder(Order.asc(pm));
					}else if(BaseParameter.SORTED_ASC.equals(map.get(pm))){
						criteria.addOrder(Order.desc(pm));
					}
				}
			}
			return criteria.list();
		}
		return null;
	}
	
	public List<E> doQuery(BaseParameter param) throws Exception{
		if (param == null)
			return null;
		StringBuffer hql = new StringBuffer("select o from "
				+ entityClass.getName() + " o where 1=1 ");
		Map<String, Object> mapParameter = new HashMap<String, Object>();
		buildHql(hql, param, mapParameter);
		buildSorted(param,hql);
		Query query = getSession().createQuery(hql.toString());
		setParameter(mapParameter, query);
		return query.list();
	}

	public List<E> doQueryAll() {
		Session session = getSession();
		Query query = session.createQuery("select o from "
				+ entityClass.getName() + " o ");
		return query.list();
	}

	public QueryResult<E> doPaginationQuery(BaseParameter param) throws Exception {
		if (param == null)
			return null;
		StringBuffer whereClause = new StringBuffer();
		Map<String, Object> mapParameter = new HashMap<String, Object>();
		buildHql(whereClause, param, mapParameter);
		QueryResult<E> qr = new QueryResult<E>();
		
		StringBuffer countHql = new StringBuffer("select count(*) from "+ entityClass.getName() + " o where 1=1 ");
		countHql.append(whereClause);
		Query query = getSession().createQuery(countHql.toString());
		setParameter(mapParameter, query);
		qr.setTotalCount((Long)query.uniqueResult());
		
		StringBuffer queryHql = new StringBuffer("select o from "+ entityClass.getName() + " o where 1=1 ");
		queryHql.append(whereClause);
		buildSorted(param,queryHql);
		query = getSession().createQuery(queryHql.toString());
		if (param.getFirstResult() != -1 && param.getMaxResults() != -1) {
			query.setFirstResult(param.getFirstResult());
			query.setMaxResults(param.getMaxResults());
		}
		setParameter(mapParameter, query);
		qr.setResultList(query.list());
		return qr;
	}
	
	protected void buildSorted(BaseParameter param,StringBuffer hql){
		if(param.getSortedConditions()!=null&&param.getSortedConditions().size()>0){
			hql.append(" order by ");
			Map<String,String> sorted = param.getSortedConditions();
			for(Iterator<String> it = sorted.keySet().iterator();it.hasNext();){
				String col = it.next();
				hql.append(col+" "+sorted.get(col)+",");
			}
			hql.deleteCharAt(hql.length()-1);
		}
	}
	
	public void clear() {
		getHibernateTemplate().clear();
	}

	public void evict(E entity) {
		getHibernateTemplate().evict(entity);
	}
	
	/**
	 *������ҳ������������Ӧ��ѯ��������where���Ӿ䡣������ҳ���ֶ�_se_name��ֵΪ"abc"�������ɵ������Ӿ�Ϊ��name =	'abc'��
	 *�ж���ֶεģ����������ɵ�������and��ϵ����ҳ�ϵ��ֶ�Ҫ��һ�������������ֶ�����'_'+����+����+'_'�ֶ�����
	 * <pre>
	 *   ǰ׺�б�
	 *   ����   ��   �ǿ�    >      >=    =    <     <=    <>   is null or not null
	 *   �ִ�  _sn  _snn  _sgt   _sge  _se  _slt  _sle  _sne        _snull  
	 *   ����  _nn  _nnn  _ngt   _nge  _ne  _nlt  _nle  _nne        _nnull
	 *   ����  _dn  _dnn  _dgt   _dge  _de  _dlt  _dle  _dne        _dnull
	 *   �ַ������������㣺
	 *   	like  not like   like 'a%'   like '%a'
	 *    _slike   _snlike    _sswlike    _sewlike
	 *   ֱ�ӵ�hql������
	 *   _ql_
	 *   ע�� ����_dne��"���ڲ�����"�������ã��д��ý� 
	 * </pre>
	 * @param hql  hql String
	 * @param param  query parameter
	 * @param mapParameter  handered parameter
	 * @throws Exception
	 */
	protected void buildHql(StringBuffer hql, BaseParameter param,Map<String, Object> mapParameter) throws Exception {
		if(param==null){
			return;
		}
		Map map = handlerConditions(param);
		for (Iterator<String> it = map.keySet().iterator(); it.hasNext();) {
			String queryCondition = it.next();
			Object value = map.get(queryCondition);
			if (!queryCondition.startsWith("_"))
				continue;
			if (value == null || "".equals(value))
				continue;
			hql.append(" and ");
			String colName = transferColumn(queryCondition);
			
			String key = queryCondition.substring(0,queryCondition.indexOf('_',1));
			QLRegular qlRegular = SystemInitListener.QLRegularMap.get(key);
			hql.append(QLHandlerFactory.getQLHandler(qlRegular.getHandler()).getClause(qlRegular.getCondition(), colName, queryCondition, value));
			value = QLHandlerFactory.getQLHandler(qlRegular.getHandler()).getValue(value);
			if(value!=null)
				mapParameter.put(queryCondition, value);
			
//			if (queryCondition.startsWith("_hql_")) {
//				hql.append(" ( " + map.get(queryCondition) + " ) ");
//				continue;
//			}
//			
//			hql.append(colName);
//			
//			if (queryCondition.startsWith("_se")
//				|| queryCondition.startsWith("_ne")
//				|| queryCondition.startsWith("_de")) {
//				hql.append(" = :" + queryCondition);
//			}else if(queryCondition.startsWith("_snull")
//					|| queryCondition.startsWith("_snull")
//					|| queryCondition.startsWith("_dnull")) {
//				if(value instanceof Boolean){
//					if((Boolean)value)
//						hql.append(" is null ");
//					else
//						hql.append(" is not null ");
//				}
//			}else if (queryCondition.startsWith("_sle")
//					|| queryCondition.startsWith("_nle")
//					|| queryCondition.startsWith("_dle")) {
//				hql.append(" <= :" + queryCondition);
//				if (value instanceof Date) {
//					Date v = (Date)value;
//					String s = DateFormatUtils.format(v, "yyyy-MM-dd HH:mm:ss");
//					if(s.endsWith("00:00:00")){
//						value =DateUtils.addMilliseconds(
//							DateUtils.addSeconds(
//									DateUtils.addMinutes(
//											DateUtils.addHours(v, 23), 59),59),999);
//					}
//				}
//			} else if (queryCondition.startsWith("_sge")
//					|| queryCondition.startsWith("_nge")
//					|| queryCondition.startsWith("_dge")) {
//				hql.append(" >= :" + queryCondition);
//			} else if (queryCondition.startsWith("_slt")
//					|| queryCondition.startsWith("_nlt")
//					|| queryCondition.startsWith("_dlt")) {
//				hql.append(" < :" + queryCondition);
//				if (value instanceof Date) {
//					Date v = (Date)value;
//					String s = DateFormatUtils.format(v, "yyyy-MM-dd HH:mm:ss");
//					if(s.endsWith("00:00:00")){
//						value =DateUtils.addMilliseconds( v, -1);
//					}
//				}
//			} else if (queryCondition.startsWith("_sge")
//					|| queryCondition.startsWith("_nge")
//					|| queryCondition.startsWith("_dge")) {
//				hql.append(" >= :" + queryCondition);
//			} else if (queryCondition.startsWith("_sgt")
//					|| queryCondition.startsWith("_ngt")
//					|| queryCondition.startsWith("_dgt")) {
//				hql.append(" > :" + queryCondition);
//				if (value instanceof Date) {
//					Date v = (Date)value;
//					String s = DateFormatUtils.format(v, "yyyy-MM-dd HH:mm:ss");
//					if(s.endsWith("00:00:00")){
//						value =DateUtils.addMilliseconds(
//								DateUtils.addSeconds(
//										DateUtils.addMinutes(
//												DateUtils.addHours(v, 23), 59),59),999);
//					}
//				}
//			} else if (queryCondition.startsWith("_sne")
//					|| queryCondition.startsWith("_nne")
//					|| queryCondition.startsWith("_dne")) {
//					hql.append(" <> :" + queryCondition);	
//			} else if(queryCondition.startsWith("_slike")){
//				hql.append(" like :" + queryCondition);
//				value = "%"+(String)value+"%";
//			} else if(queryCondition.startsWith("_snlike")){
//				hql.append(" not like :" + queryCondition);
//				value = "%"+(String)value+"%";
//			} else if(queryCondition.startsWith("_sswlike")){
//				hql.append(" like :" + queryCondition);
//				value = (String)value+"%";
//			} else if(queryCondition.startsWith("_sewlike")){
//				hql.append(" like :" + queryCondition);
//				value = "%"+(String)value;
//			}
//			mapParameter.put(queryCondition, value);
		}
	}

	/**
	 * handle parameter when static and dynamic parameter is same static recover dynamic
	 * @param param
	 * @return
	 * @throws Exception
	 */
	protected Map handlerConditions(BaseParameter param) throws Exception {
		Map staticConditions = BeanUtils.describe(param);
		Map<String, Object> dynamicConditions = param
				.getQueryDynamicConditions();
		if (dynamicConditions.size() > 0) {
			for (Iterator it = staticConditions.keySet().iterator(); it.hasNext();) {
				String key = (String) it.next();
				Object value = staticConditions.get(key);
				if (key.startsWith("_") && value != null && !"".equals(value)) {
					dynamicConditions.put(key, value);
				}
			}
			staticConditions = dynamicConditions;
		}
		return staticConditions;
	}

	/**
	 * from "_ne_parameter" to  "parameter" 
	 * @param queryCondition
	 * @return
	 */
	private String transferColumn(String queryCondition) {
		return queryCondition.substring(queryCondition.indexOf('_',1) + 1);
	}

	/**
	 * set parameter for hql query
	 * @param mapParameter
	 * @param query
	 */
	protected void setParameter(Map<String, Object> mapParameter, Query query) {
		for (Iterator<String> it = mapParameter.keySet().iterator(); it.hasNext();) {
			String parameterName = (String) it.next();
			Object value = mapParameter.get(parameterName);
			query.setParameter(parameterName, value);
		}
	}
}
