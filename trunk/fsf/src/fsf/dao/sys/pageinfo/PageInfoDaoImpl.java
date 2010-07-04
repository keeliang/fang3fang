package fsf.dao.sys.pageinfo;

import org.springframework.stereotype.Repository;

import fsf.beans.sys.pageinfo.PageInfo;
import chance.base.dao.BaseDao;

@Repository
public class PageInfoDaoImpl extends BaseDao<PageInfo> implements PageInfoDao{
	public PageInfoDaoImpl() {
		super(PageInfo.class);
	}
}
