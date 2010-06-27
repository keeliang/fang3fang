package fsf.action.sys.config;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import chance.base.action.BaseAction;
import chance.common.SystemConfigInitListener;
import fsf.beans.sys.config.SysConfig;
import fsf.service.sys.config.SysConfigService;

@Controller
@Scope("prototype")
public class SysConfigAction extends BaseAction<SysConfig> {
	private static final long serialVersionUID = -7892811662835812919L;

	public SysConfigAction() {
		super(SysConfig.class, new String[] { "id" });
	}
	
	@Resource
	public void setSysConfigService(SysConfigService sysConfigService){
		this.service = sysConfigService;
	}
	
	public SysConfigService getSysConfigService(){
		return (SysConfigService)this.service;
	}

	public void setSysConfigParameter(SysConfigParameter param){
		this.baseParameter = param;
	}
	public SysConfigParameter getSysConfigParameter(){
		return (SysConfigParameter)baseParameter;
	}
	
	protected void afterUpdate() {
		SystemConfigInitListener.sysConfig.put(item, value);
	}
	
	private int id;
	private String item;
	private String value;
	private String itemDesc;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getItem() {
		return item;
	}

	public void setItem(String item) {
		this.item = item;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public String getItemDesc() {
		return itemDesc;
	}

	public void setItemDesc(String itemDesc) {
		this.itemDesc = itemDesc;
	}

	

}