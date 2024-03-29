package fsf.beans.sys.province;

// default package
// Generated 2010-4-24 9:01:44 by Hibernate Tools 3.2.4.GA

/**
 * SysProvince generated by hbm2java
 */
public class Province implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8233083693013903423L;
	private Integer provinceId;
	private String provinceName;

	public Province() {
	}

	public Province(String provinceName) {
		this.provinceName = provinceName;
	}

	public Integer getProvinceId() {
		return this.provinceId;
	}

	public void setProvinceId(Integer provinceId) {
		this.provinceId = provinceId;
	}

	public String getProvinceName() {
		return this.provinceName;
	}

	public void setProvinceName(String provinceName) {
		this.provinceName = provinceName;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((provinceId == null) ? 0 : provinceId.hashCode());
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
		final Province other = (Province) obj;
		if (provinceId == null) {
			if (other.provinceId != null)
				return false;
		} else if (!provinceId.equals(other.provinceId))
			return false;
		return true;
	}

}
