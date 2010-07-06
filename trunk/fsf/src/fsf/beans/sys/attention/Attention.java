package fsf.beans.sys.attention;

// default package
// Generated 2010-7-5 14:59:49 by Hibernate Tools 3.2.4.GA

import java.util.Date;

/**
 * SysAttention generated by hbm2java
 */
public class Attention implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8651112058433483037L;
	private Integer attentionId;
	private Byte status;
	private Byte type;
	private String title;
	private String content;
	private Date createTime;

	public Attention() {
	}

	public Integer getAttentionId() {
		return this.attentionId;
	}

	public void setAttentionId(Integer attentionId) {
		this.attentionId = attentionId;
	}

	public Byte getStatus() {
		return this.status;
	}

	public void setStatus(Byte status) {
		this.status = status;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getCreateTime() {
		return this.createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Byte getType() {
		return type;
	}

	public void setType(Byte type) {
		this.type = type;
	}
}