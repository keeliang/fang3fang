package fsf.service.sys.pageinfo;

import java.util.Map;

import fsf.beans.sys.pageinfo.PageInfo;
import chance.base.service.Service;

public interface PageInfoService extends Service<PageInfo>{
	public Map<String,String> getPageInfoCache();
}
