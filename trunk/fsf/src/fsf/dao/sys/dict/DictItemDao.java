package fsf.dao.sys.dict;

import java.util.List;

import chance.base.BaseParameter;
import chance.base.dao.Dao;
import fsf.beans.sys.dict.DictItem;

public interface DictItemDao extends Dao<DictItem>{

	public List<DictItem> getDaynamicConfig(String entity,String itemKeyProperty,String ItemNameProperty,BaseParameter param)throws Exception;
	public void deleteAll();
}
