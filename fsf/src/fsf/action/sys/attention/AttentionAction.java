package fsf.action.sys.attention;

import java.io.Serializable;
import java.util.Date;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import chance.base.action.BaseAction;
import fsf.beans.sys.attention.Attention;
import fsf.service.sys.attention.AttentionService;
import fsf.web.common.ConstantCache;

@Controller
@Scope("prototype")
public class AttentionAction extends BaseAction<Attention> {
	
	public AttentionAction() {
		super(Attention.class, new String[] { "attentionId" });
	}
	
	@Resource
	public void setAttentionService(AttentionService attentionService){
		this.service = attentionService;
	}

	public void setAttentionParameter(AttentionParameter param){
		this.baseParameter = param;
	}
	public AttentionParameter getAttentionParameter(){
		return (AttentionParameter)baseParameter;
	}
	
	@Override
	protected void afterPersist() {
		if(type==1)
			ConstantCache.SALEATTENTIONCACHE.put(attentionId, title);
		if(type==2)
			ConstantCache.BUYATTENTIONCACHE.put(attentionId, title);
	}
	
	@Override
	protected void afterUpdate() {
		if(type==1)
			ConstantCache.SALEATTENTIONCACHE.put(attentionId, title);
		if(type==2)
			ConstantCache.BUYATTENTIONCACHE.put(attentionId, title);
	}
	
	@Override
	protected void afterDelete(Serializable[] arrayId) {
		for(Serializable id : arrayId){
			ConstantCache.SALEATTENTIONCACHE.remove(id);
			ConstantCache.BUYATTENTIONCACHE.remove(id);
		}
	}
	
	@Override
	protected void initData() {
		createTime = new Date();
	}
	
	@Override
	protected void beforePersist() {
		createTime = new Date();
	}
	
	private Integer attentionId;
	private Short type;
	private Short status;
	private String title;
	private String content;
	private Date createTime;

	public void setAttentionId(Integer attentionId){
		this.attentionId = attentionId;
	}
	public Integer getAttentionId(){
		return this.attentionId;
	}
	public void setType(Short type){
		this.type = type;
	}
	public Short getType(){
		return this.type;
	}
	public void setStatus(Short status){
		this.status = status;
	}
	public Short getStatus(){
		return this.status;
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
	public void setCreateTime(Date createTime){
		this.createTime = createTime;
	}
	public Date getCreateTime(){
		return this.createTime;
	}

}