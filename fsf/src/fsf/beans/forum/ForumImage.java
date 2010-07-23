package fsf.beans.forum;

public class ForumImage implements java.io.Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 8479717151417724054L;
	private Integer id;
	private Integer forumId;
	private String imagePath;
	private String forumName;

	public String getForumName() {
		return forumName;
	}

	public void setForumName(String forumName) {
		this.forumName = forumName;
	}

	public ForumImage() {

	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getForumId() {
		return forumId;
	}

	public void setForumId(Integer forumId) {
		this.forumId = forumId;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
}
