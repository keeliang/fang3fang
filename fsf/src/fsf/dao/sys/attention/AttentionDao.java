package fsf.dao.sys.attention;

import java.util.Map;

import fsf.beans.sys.attention.Attention;
import chance.base.dao.Dao;

public interface AttentionDao extends Dao<Attention>{
	public Map<Integer,String> getAttentionCache(Byte type);
}
