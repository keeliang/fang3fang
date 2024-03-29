package fsf.beans.info.infocomment;

// default package
// Generated 2010-4-22 21:14:27 by Hibernate Tools 3.2.4.GA

import java.util.Date;

/**
 * InfoComment generated by hbm2java
 */
public class InfoComment implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3896868616922481477L;
	private Integer commentId;
	private String content;
	private Integer informationId;
	private String ip;
	private Short status;
	private Date createTime;
	private Integer createUserId;
	private Date updateTime;
	private Integer updateUserId;

	public InfoComment() {
	}

	public InfoComment(Integer commentId, String content, Integer informationId,
			String ip, Short status, Date createTime, Integer createUserId,
			Date updateTime, Integer updateUserId) {
		this.commentId = commentId;
		this.content = content;
		this.informationId = informationId;
		this.ip = ip;
		this.status = status;
		this.createTime = createTime;
		this.createUserId = createUserId;
		this.updateTime = updateTime;
		this.updateUserId = updateUserId;
	}

	public Integer getCommentId() {
		return this.commentId;
	}

	public void setCommentId(Integer commentId) {
		this.commentId = commentId;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Integer getInformationId() {
		return this.informationId;
	}

	public void setInformationId(Integer informationId) {
		this.informationId = informationId;
	}

	public String getIp() {
		return this.ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public Short getStatus() {
		return this.status;
	}

	public void setStatus(Short status) {
		this.status = status;
	}

	public Date getCreateTime() {
		return this.createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Integer getCreateUserId() {
		return this.createUserId;
	}

	public void setCreateUserId(Integer createUserId) {
		this.createUserId = createUserId;
	}

	public Date getUpdateTime() {
		return this.updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public Integer getUpdateUserId() {
		return this.updateUserId;
	}

	public void setUpdateUserId(Integer updateUserId) {
		this.updateUserId = updateUserId;
	}

}
