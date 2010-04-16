package fsf.service.sys.dict;

import java.util.List;

import chance.base.BaseParameter;
import chance.base.service.Service;
import fsf.beans.sys.dict.DictItem;

public interface DictItemService extends Service<DictItem>{
	public List<DictItem> getDaynamicConfig(String entity,String itemKeyProperty,String ItemNameProperty,BaseParameter param) throws Exception;
}
