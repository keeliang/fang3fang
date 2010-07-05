package fsf.dao.sys.attention;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import chance.base.dao.BaseDao;
import fsf.beans.sys.attention.Attention;

@Repository
public class AttentionDaoImpl extends BaseDao<Attention> implements AttentionDao{
	public AttentionDaoImpl() {
		super(Attention.class);
	}
	
	public Map<Integer,String> getAttentionCache(Byte type){
		Query query = getSession().createQuery("select attentionId,title from Attention where status=1 and type=:type order by createTime desc ");
		query.setParameter("type", type);
		List list = query.list();
		Map<Integer,String> map = new HashMap<Integer, String>();
		for(Iterator it = list.iterator();it.hasNext();){
			Object[] os = (Object[])it.next();
			map.put((Integer)os[0], (String)os[1]);
		}
		return map;
	}
}
