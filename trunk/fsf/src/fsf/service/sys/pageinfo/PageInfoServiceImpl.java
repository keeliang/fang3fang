package fsf.service.sys.pageinfo;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import fsf.beans.sys.pageinfo.PageInfo;
import fsf.dao.sys.pageinfo.PageInfoDao;
import chance.base.service.BaseService;
@Service
public class PageInfoServiceImpl extends BaseService<PageInfo> implements PageInfoService {
	@Resource
	public void setPageInfoDao(PageInfoDao pageInfoDao){
		dao = pageInfoDao;
	}
}
