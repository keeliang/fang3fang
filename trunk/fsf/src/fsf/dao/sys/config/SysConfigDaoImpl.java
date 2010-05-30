package fsf.dao.sys.config;

import org.springframework.stereotype.Repository;

import chance.base.dao.BaseDao;
import fsf.beans.sys.config.SysConfig;

@Repository
public class SysConfigDaoImpl extends BaseDao<SysConfig> implements SysConfigDao{
	public SysConfigDaoImpl() {
		super(SysConfig.class);
	}
}
