package fsf.service.forum;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import chance.base.service.BaseService;
import fsf.beans.forum.ForumImage;
import fsf.dao.forum.ForumImageDao;
@Service
public class ForumImageServiceImpl extends BaseService<ForumImage> implements ForumImageService {
	@Resource
	public void setForumImageDao(ForumImageDao forumImageDao){
		dao = forumImageDao;
	}
}
