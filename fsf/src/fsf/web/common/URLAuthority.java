package fsf.web.common;

import java.io.Serializable;

public class URLAuthority implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 7590816565739785148L;
	private String resource;
	private String redirect;

	public URLAuthority(String resource, String redirect) {
		super();
		this.resource = resource;
		this.redirect = redirect;
	}

	public String getResource() {
		return resource;
	}

	public void setResource(String resource) {
		this.resource = resource;
	}

	public String getRedirect() {
		return redirect;
	}

	public void setRedirect(String redirect) {
		this.redirect = redirect;
	}

}
