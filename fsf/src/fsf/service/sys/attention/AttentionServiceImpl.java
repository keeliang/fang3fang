package fsf.service.sys.attention;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import fsf.beans.sys.attention.Attention;
import fsf.dao.sys.attention.AttentionDao;
import chance.base.service.BaseService;
@Service
public class AttentionServiceImpl extends BaseService<Attention> implements AttentionService {
	@Resource
	public void setAttentionDao(AttentionDao attentionDao){
		dao = attentionDao;
	}
	
	public AttentionDao getAttentionDao(){
		return (AttentionDao)dao;
	}
	
	public Map<Integer,String> getAttentionCache(Byte type){
		return getAttentionDao().getAttentionCache(type);
	}
}
