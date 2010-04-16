package fsf.web.ui;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.components.Component;
import org.apache.struts2.views.jsp.ComponentTagSupport;

import com.opensymphony.xwork2.util.ValueStack;

public class DictTranslateTag extends ComponentTagSupport{
	
	@Override
	public Component getBean(ValueStack stack, HttpServletRequest req,
			HttpServletResponse res) {
		return new DictTranslate(stack);
	}
	
	private String groupName;
	private String value;
	
	protected void populateParams() {
        super.populateParams();
        DictTranslate tag = (DictTranslate) component;
        tag.setPageContext(pageContext);
        tag.setValue(value);
        tag.setGroupName(groupName);
    }

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public String getGroupName() {
		return groupName;
	}

	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}
	
}
