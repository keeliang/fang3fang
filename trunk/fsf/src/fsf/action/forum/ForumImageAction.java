package fsf.action.forum;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import chance.base.action.UploadBaseAction;
import fsf.beans.forum.ForumImage;
import fsf.service.forum.ForumImageService;

@Controller
@Scope("prototype")
public class ForumImageAction extends UploadBaseAction<ForumImage> {
	private static final long serialVersionUID = -7892811662835812919L;

	public ForumImageAction() {
		super(ForumImage.class, new String[] { "id" }, "image");
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
	
	private int id;
	private int forumId;
	private String image;
	
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

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	
}