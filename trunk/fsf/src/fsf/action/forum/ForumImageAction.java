package fsf.action.forum;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import chance.base.action.UploadBaseAction;
import fsf.beans.forum.ForumImage;
import fsf.service.forum.ForumImageService;
import fsf.web.common.ConstantCache;

@Controller
@Scope("prototype")
public class ForumImageAction extends UploadBaseAction<ForumImage> {
	private static final long serialVersionUID = -7892811662835812919L;

	public ForumImageAction() {
		super(ForumImage.class, new String[] { "id" }, "imagePath");
	}
	
	@Resource
	public void setForumImageService(ForumImageService forumImageService){
		this.service = forumImageService;
	}
	
	public ForumImageService getForumImageService(){
		return (ForumImageService)this.service;
	}

	public void setForumImageParameter(ForumImageParameter param){
		this.baseParameter = param;
	}
	public ForumImageParameter getForumImageParameter(){
		return (ForumImageParameter)baseParameter;
	}
	
	//update cache value
	@Override
	protected void afterUpdate() {
//		List<ForumImage> list = ConstantCache.LISTFORUMIMAGE;
//		for(ForumImage forumImage:list){
//			if(forumImage.getForumId() == forumId){
//				forumImage.setImagePath(imagePath);
//				break;
//			}
//		}
		ConstantCache.LISTFORUMIMAGE = getForumImageService().getForumImageCache();
	}
	
	//add the new record to the cache
	@Override
	protected void afterPersist(){
//		List<ForumImage> list = ConstantCache.LISTFORUMIMAGE;
//		if(list==null){
//			list = new ArrayList<ForumImage>();
//		}
//		ForumImage forumImage = new ForumImage();
//		forumImage.setId(id);
//		forumImage.setForumId(forumId);
//		forumImage.setImagePath(imagePath);
//		list.add(forumImage);
		ConstantCache.LISTFORUMIMAGE = getForumImageService().getForumImageCache();
	}
	
	private int id;
	private int forumId;
	private String imagePath;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getForumId() {
		return forumId;
	}

	public void setForumId(int forumId) {
		this.forumId = forumId;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	
}