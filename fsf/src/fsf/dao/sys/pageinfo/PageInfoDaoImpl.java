package fsf.dao.sys.pageinfo;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import chance.base.dao.BaseDao;
import fsf.beans.sys.pageinfo.PageInfo;

@Repository
public class PageInfoDaoImpl extends BaseDao<PageInfo> implements PageInfoDao{
	public PageInfoDaoImpl() {
		super(PageInfo.class);
	}
	
	public Map<String,String> getPageInfoCache(){
		Query query = getSession().createQuery("select infoName,title from PageInfo where seq <=12");
		List list = query.list();
		Map<String,String> map = new HashMap<String, String>();
		for(Iterator it = list.iterator();it.hasNext();){
			Object[] os = (Object[])it.next();
			map.put((String)os[0], (String)os[1]);
		}
		return map;
	}
}
