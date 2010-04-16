package fsf.web.ui;

import java.io.Writer;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.PageContext;

import org.apache.struts2.components.Component;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import chance.base.BaseParameter;

import com.opensymphony.xwork2.util.ValueStack;

import fsf.beans.sys.dict.DictItem;
import fsf.service.sys.dict.DictItemService;
import fsf.web.common.WebConstant;

public class DictTranslate extends Component{
	private String groupName;
	private String value;
	private PageContext pageContext;
	public DictTranslate(ValueStack stack) {
		super(stack);
	}
	
	public void setPageContext(PageContext pageContext) {
		this.pageContext = pageContext;
	}

    public void setValue(String value) {
        this.value = value;
    }

	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}

	public boolean start(Writer writer) {
        boolean result = super.start(writer);

        String actualValue = null;

        if (value == null) {
            value = "top";
        }
        else if (altSyntax()) {
            if (value.startsWith("%{") && value.endsWith("}")) {
                value = value.substring(2, value.length() - 1);
            }
        }
        actualValue = (String) getStack().findValue(value, String.class);
        
        try {
        	DictItem di = null;
        	//get dict translate from sys_dictitem
        	if(groupName.startsWith(WebConstant.DATA_DICT)){
        		if (actualValue != null) {
                	HttpServletRequest req = (HttpServletRequest)pageContext.getRequest();
                	WebApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(req.getSession().getServletContext());
                	DictItemService dictItemService = (DictItemService)ctx.getBean("dictItemServiceImpl");
                	di = new DictItem();
                	di.setGroupName(groupName.substring(1));
                	di.setItemKey(actualValue);
                	di = dictItemService.get(di);
                }
        	}
        	//get dict translate from dictConfig.xml
        	else if(groupName.startsWith(WebConstant.CONFIG_DICT)){
        		if (actualValue != null) {
        			ServletContext sc = ((HttpServletRequest)pageContext.getRequest()).getSession().getServletContext();
        			Map<String,DictItem> map = (Map<String,DictItem>)sc.getAttribute(WebConstant.SYSCONFIG);
 
        			if(map.containsKey(groupName.substring(1))){
        				Object cache = map.get(groupName.substring(1));
            			//get static config from dictConfig.xml
        				if(cache instanceof List){
        					List<DictItem> list = (List<DictItem>)cache;
            				for(int i = 0;i<list.size();i++){
            					if(list.get(i).getItemKey().equals(actualValue)){
            						di = list.get(i); 
            						break;
            					}
            				}
        				}
        				//get dynamic config from dictConfig.xml
        				else if(cache instanceof String[]){
        					String[] aryCache = (String[])cache;
        					HttpServletRequest req = (HttpServletRequest)pageContext.getRequest();
                        	WebApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(req.getSession().getServletContext());
                        	DictItemService dictItemService = (DictItemService)ctx.getBean("dictItemServiceImpl");
            				BaseParameter param = new BaseParameter();
            				param.getQueryDynamicConditions().put("_se_"+aryCache[1], actualValue);
            				List<DictItem> list = dictItemService.getDaynamicConfig(aryCache[0], aryCache[1], aryCache[2], param);
            				if(list.size()>0)
            					di = list.get(0);
        				}
        				
        			}
        		}
        	}
        	if(di!=null)
        		writer.write(di.getItemName());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}