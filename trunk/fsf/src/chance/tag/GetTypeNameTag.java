package chance.tag;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.components.Component;
import org.apache.struts2.views.jsp.ComponentTagSupport;

import com.opensymphony.xwork2.util.ValueStack;

public class GetTypeNameTag extends ComponentTagSupport {
	private static final long serialVersionUID = 5857763445353411935L;

	private String keyValue;
	private String typeItemId;
	
	public Component getBean(ValueStack stack, HttpServletRequest req,
			HttpServletResponse res){
		return new GetTypeNameComponent(stack);
	}
	
	protected void populateParams() {
		super.populateParams();
		GetTypeNameComponent getTypeNameComponent = (GetTypeNameComponent)component;
		getTypeNameComponent.setKeyValue(keyValue);
		getTypeNameComponent.setTypeItemId(typeItemId);
	}

	public String getKeyValue() {
		return keyValue;
	}

	public void setKeyValue(String keyValue) {
		this.keyValue = keyValue;
	}

	public String getTypeItemId() {
		return typeItemId;
	}

	public void setTypeItemId(String typeItemId) {
		this.typeItemId = typeItemId;
	}

}
