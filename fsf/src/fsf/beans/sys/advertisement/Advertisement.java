package fsf.beans.sys.advertisement;

// Generated 2010-7-16 11:46:50 by Hibernate Tools 3.2.4.GA

/**
 * SysAdvertisement generated by hbm2java
 */
public class Advertisement implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2457929519510457371L;
	private String advertisementName;
	private String advertisementDesc;
	private String imagePath;
	private String title;
	private String link;

	public Advertisement() {
	}

	public String getAdvertisementName() {
		return this.advertisementName;
	}

	public void setAdvertisementName(String advertisementName) {
		this.advertisementName = advertisementName;
	}

	public String getAdvertisementDesc() {
		return this.advertisementDesc;
	}

	public void setAdvertisementDesc(String advertisementDesc) {
		this.advertisementDesc = advertisementDesc;
	}

	public String getImagePath() {
		return this.imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

}