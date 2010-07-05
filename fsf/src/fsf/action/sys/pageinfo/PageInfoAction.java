package fsf.action.sys.pageinfo;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import chance.base.BaseParameter;
import chance.base.action.BaseAction;
import fsf.beans.sys.pageinfo.PageInfo;
import fsf.service.sys.pageinfo.PageInfoService;
import fsf.web.common.ConstantCache;

@Controller
@Scope("prototype")
public class PageInfoAction extends BaseAction<PageInfo> {
	
	public PageInfoAction() {
		super(PageInfo.class, new String[] { "infoName" });
	}
	
	private List<PageInfo> listPageInfo;
	
	public String doHelpList() throws Exception {
		try {
			if(baseParameter==null)
				baseParameter = new PageInfoParameter();
			((PageInfoParameter)baseParameter).set_nne_seq((byte)18);
			baseParameter.getSortedConditions().put("seq", BaseParameter.SORTED_ASC);
			listPageInfo = service.doQuery(baseParameter);
		} catch (Exception e) {
			throw e;
		}
		return SUCCESS;
	}
	
	public String doBank() throws Exception{
		infoName = "Bank";
		return doEdit();
	}
	
	@Override
	protected void afterUpdate() {
		if(seq<=12)
			ConstantCache.PAGEINFOCACHE.put(infoName, title);
	}
	
	
	@Resource
	public void setPageInfoService(PageInfoService pageInfoService){
		this.service = pageInfoService;
	}
	
	public PageInfoService getPageInfoService(){
		return (PageInfoService)this.service;
	}

	public void setPageInfoParameter(PageInfoParameter param){
		this.baseParameter = param;
	}
	public PageInfoParameter getPageInfoParameter(){
		return (PageInfoParameter)baseParameter;
	}
	
	private String infoName;
	private String infoDesc;
	private String title;
	private String content;
	private Short seq;

	public void setInfoName(String infoName){
		this.infoName = infoName;
	}
	public String getInfoName(){
		return this.infoName;
	}
	public void setInfoDesc(String infoDesc){
		this.infoDesc = infoDesc;
	}
	public String getInfoDesc(){
		return this.infoDesc;
	}
	public void setTitle(String title){
		this.title = title;
	}
	public String getTitle(){
		return this.title;
	}
	public void setContent(String content){
		this.content = content;
	}
	public String getContent(){
		return this.content;
	}
	public void setSeq(Short seq){
		this.seq = seq;
	}
	public Short getSeq(){
		return this.seq;
	}
	public List<PageInfo> getListPageInfo() {
		return listPageInfo;
	}
	public void setListPageInfo(List<PageInfo> listPageInfo) {
		this.listPageInfo = listPageInfo;
	}
}