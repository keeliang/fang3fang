package fsf.service.forum;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import chance.base.service.BaseService;
import fsf.beans.forum.ForumImage;
import fsf.dao.forum.ForumImageDao;
import fsf.dao.sys.pageinfo.PageInfoDao;
@Service
public class ForumImageServiceImpl extends BaseService<ForumImage> implements ForumImageService {
	@Resource
	public void setForumImageDao(ForumImageDao forumImageDao){
		dao = forumImageDao;
	}
	
	@Transactional(readOnly=true,propagation=Propagation.NOT_SUPPORTED)
	public List<ForumImage> getForumImageCache(){
		return ((ForumImageDao)dao).getForumImageCache();
	}
}
