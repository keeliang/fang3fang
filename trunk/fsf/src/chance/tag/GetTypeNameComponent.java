package chance.tag;

import java.io.IOException;
import java.io.Writer;

import javax.annotation.Resource;

import org.apache.struts2.components.Component;

import chance.tag.service.TagService;

import com.opensymphony.xwork2.util.ValueStack;

@org.springframework.stereotype.Component
public class GetTypeNameComponent extends Component {
	private String keyValue;
	private String typeItemId;
	
	private TagService tagService;

	public GetTypeNameComponent(ValueStack stack) {
		super(stack);
	}

	@Override
	@SuppressWarnings("unchecked")
	public boolean start(Writer writer) {
		boolean result = super.start(writer);
		try {
			String resultStr = "";
			String typeId = "";
			typeId = (String) this.findValue(keyValue, String.class);
			
			resultStr = tagService.getTypeName(typeItemId, keyValue);

			writer.write(resultStr);
		} catch (IOException ex) {
			ex.printStackTrace();
		}

		return result;
	}

	public void setKeyValue(String keyValue) {
		this.keyValue = keyValue;
	}

	public void setTypeItemId(String typeItemId) {
		this.typeItemId = typeItemId;
	}

	public TagService getTagService() {
		return tagService;
	}
	@Resource
	public void setTagService(TagService tagService) {
		this.tagService = tagService;
	}
}
