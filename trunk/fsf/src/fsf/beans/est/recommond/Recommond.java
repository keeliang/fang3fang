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
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((estateId == null) ? 0 : estateId.hashCode());
		result = prime * result + ((userId == null) ? 0 : userId.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		final Recommond other = (Recommond) obj;
		if (estateId == null) {
			if (other.estateId != null)
				return false;
		} else if (!estateId.equals(other.estateId))
			return false;
		if (userId == null) {
			if (other.userId != null)
				return false;
		} else if (!userId.equals(other.userId))
			return false;
		return true;
	}
	
}
