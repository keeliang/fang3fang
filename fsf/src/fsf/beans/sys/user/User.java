package fsf.beans.sys.user;

// default package
// Generated 2010-4-15 14:29:12 by Hibernate Tools 3.2.4.GA

import java.util.Date;

/**
 * SysUser generated by hbm2java
 */
public class User implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer userId;
	private String userCode;
	private String password;
	private String userName;
	private Byte status;
	private Byte userType;
	private Integer provinceId;
	private Integer cityId;
	private Integer regionId;
	private String address;
	private String tel;
	private String email;
	private Date createDate;
	private String imagePath;

	public User() {
	}

	public User(String userCode, String password, byte status, Byte userType,
			Date createDate) {
		this.userCode = userCode;
		this.password = password;
		this.status = status;
		this.userType = userType;
		this.createDate = createDate;
	}

	public User(String userCode, String password, String userName, Byte status,
			Byte userType, Integer provinceId, Integer cityId,
			Integer regionId, String address, String tel, String email,
			Date createDate, String imagePath) {
		this.userCode = userCode;
		this.password = password;
		this.userName = userName;
		this.status = status;
		this.userType = userType;
		this.provinceId = provinceId;
		this.cityId = cityId;
		this.regionId = regionId;
		this.address = address;
		this.tel = tel;
		this.email = email;
		this.createDate = createDate;
		this.imagePath = imagePath;
	}

	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUserCode() {
		return this.userCode;
	}

	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public Byte getStatus() {
		return this.status;
	}

	public void setStatus(Byte status) {
		this.status = status;
	}

	public Byte getUserType() {
		return this.userType;
	}

	public void setUserType(Byte userType) {
		this.userType = userType;
	}

	public Integer getProvinceId() {
		return this.provinceId;
	}

	public void setProvinceId(Integer provinceId) {
		this.provinceId = provinceId;
	}

	public Integer getCityId() {
		return this.cityId;
	}

	public void setCityId(Integer cityId) {
		this.cityId = cityId;
	}

	public Integer getRegionId() {
		return this.regionId;
	}

	public void setRegionId(Integer regionId) {
		this.regionId = regionId;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTel() {
		return this.tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getImagePath() {
		return this.imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
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
		final User other = (User) obj;
		if (userId == null) {
			if (other.userId != null)
				return false;
		} else if (!userId.equals(other.userId))
			return false;
		return true;
	}

}
