package fsf.service.sys.dict;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import chance.base.BaseParameter;
import chance.base.service.BaseService;
import fsf.beans.sys.dict.DictItem;
import fsf.dao.sys.dict.DictItemDao;

@Service
public class DictItemServiceImpl extends BaseService<DictItem> implements DictItemService{
	@Resource
	public void setDictItemDao(DictItemDao dictItemDao){
		this.dao = dictItemDao;
	}
	
	public DictItemDao getDictItemDao(){
		return (DictItemDao)dao;
	}
	
	public List<DictItem> getDaynamicConfig(String entity,
			String itemKeyProperty, String ItemNameProperty, BaseParameter param) throws Exception{
		return getDictItemDao().getDaynamicConfig(entity, itemKeyProperty, ItemNameProperty, param);
	}
}
