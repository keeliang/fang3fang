package fsf.dao.sys.dict;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.CacheMode;
import org.hibernate.SQLQuery;
import org.springframework.stereotype.Repository;

import chance.base.BaseParameter;
import chance.base.dao.BaseDao;
import fsf.beans.sys.dict.DictItem;

@Repository
public class DictItemDaoImpl extends BaseDao<DictItem> implements DictItemDao{

	public DictItemDaoImpl() {
		super(DictItem.class);
	}

	public List<DictItem> getDaynamicConfig(String entity,
			String itemKeyProperty, String itemNameProperty, BaseParameter param) throws Exception {
		StringBuffer sql = new StringBuffer("select '"+entity+"' as {o.groupName}, "+itemKeyProperty+
				" as {o.itemKey},"+itemNameProperty+" as {o.itemName},null as {o.itemDesc}, "+itemKeyProperty+" as {o.seq} from "+entity+" where 1=1 ");
		Map<String, Object> mapParameter = new HashMap<String, Object>();
		buildHql(sql, param, mapParameter);
		sql.append(" order by "+itemKeyProperty);
		SQLQuery query = (SQLQuery)getSession().createSQLQuery(sql.toString());
		query.addEntity("o",DictItem.class);
		setParameter(mapParameter, query);
		query.setCacheMode(CacheMode.IGNORE);
		return query.list();
	}
}
