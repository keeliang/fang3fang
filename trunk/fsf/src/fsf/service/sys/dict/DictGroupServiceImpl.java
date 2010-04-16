package fsf.service.sys.dict;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import chance.base.service.BaseService;
import fsf.beans.sys.dict.DictGroup;
import fsf.dao.sys.dict.DictGroupDao;

@Service
public class DictGroupServiceImpl extends BaseService<DictGroup> implements DictGroupService {
	@Resource
	public void setDictGroupDao(DictGroupDao dictGroupDao){
		this.dao = dictGroupDao;
	}
}
