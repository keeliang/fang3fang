package fsf.service.sys.attention;

import java.util.Map;

import fsf.beans.sys.attention.Attention;
import chance.base.service.Service;

public interface AttentionService extends Service<Attention>{
	public Map<Integer,String> getAttentionCache(Byte type);
}
