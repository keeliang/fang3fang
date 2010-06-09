package fsf.beans.est.recommond;

import java.io.Serializable;
import java.util.Date;

public class Recommond implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 6204984824061612792L;
	private Integer userId;
	private Integer estateId;
	private Date createTime;
	
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public Integer getEstateId() {
		return estateId;
	}
	public void setEstateId(Integer estateId) {
		this.estateId = estateId;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
}
