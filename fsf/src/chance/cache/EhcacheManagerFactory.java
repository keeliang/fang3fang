package chance.cache;

import net.sf.ehcache.CacheManager;

public class EhcacheManagerFactory {
public static CacheManager cacheManager;
	
	private EhcacheManagerFactory(){}
	
	public static CacheManager getInstance(){
		if(cacheManager==null){
			if(CacheManager.ALL_CACHE_MANAGERS.size()>0)
				cacheManager = (CacheManager)CacheManager.ALL_CACHE_MANAGERS.get(0);
			else
				cacheManager = CacheManager.getInstance();
		}
		return cacheManager;
	}
}
