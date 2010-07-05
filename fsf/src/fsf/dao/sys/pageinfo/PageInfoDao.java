package fsf.dao.sys.pageinfo;

import java.util.Map;

import fsf.beans.sys.pageinfo.PageInfo;
import chance.base.dao.Dao;

public interface PageInfoDao extends Dao<PageInfo>{
	public Map<String,String> getPageInfoCache();
}
