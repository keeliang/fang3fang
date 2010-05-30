package fsf.service.sys.config;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import chance.base.service.BaseService;
import fsf.beans.sys.config.SysConfig;
import fsf.dao.sys.config.SysConfigDao;
@Service
public class SysConfigServiceImpl extends BaseService<SysConfig> implements SysConfigService {
	@Resource
	public void setSysConfigDao(SysConfigDao sysConfigDao){
		dao = sysConfigDao;
	}
}
