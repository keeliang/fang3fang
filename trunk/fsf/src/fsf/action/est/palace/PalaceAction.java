package fsf.action.est.palace;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import fsf.beans.est.palace.Palace;
import fsf.beans.sys.user.User;
import chance.base.action.BaseAction;
import chance.base.BaseParameter;
import fsf.service.est.palace.PalaceService;
import fsf.web.common.ThreadUser;

@Controller
@Scope("prototype")
public class PalaceAction extends BaseAction<Palace> {
	
	public PalaceAction() {
		super(Palace.class, new String[] { "palaceId" });
	}
	
	@Override
	protected void initData() {
		User u = ThreadUser.get();
		createUserId = u.getUserId();
		createTime = new Date();
		updateUserId = u.getUserId();
		updateTime = createTime;
	}
	
	@Override
	protected void beforePersist() {
		User u = ThreadUser.get();
		createUserId = u.getUserId();
		createTime = new Date();
		updateUserId = u.getUserId();
		updateTime = createTime;
	}
	@Override
	protected void beforeUpdate() {
		User u = ThreadUser.get();
		updateUserId = u.getUserId();
		updateTime = new Date();
	}
	
	@Resource
	public void setPalaceService(PalaceService palaceService){
		this.service = palaceService;
	}
	
	public PalaceService getPalaceService(){
		return (PalaceService)this.service;
	}

	public void setPalaceParameter(PalaceParameter param){
		this.baseParameter = param;
	}
	public PalaceParameter getPalaceParameter(){
		return (PalaceParameter)baseParameter;
	}
	
	private Integer palaceId;
	private String palaceName;
	private String palaceAddress;
	private String palaceDesc;
	private Short status;
	private Date createTime;
	private Integer createUserId;
	private Date updateTime;
	private Integer updateUserId;

	public void setPalaceId(Integer palaceId){
		this.palaceId = palaceId;
	}
	public Integer getPalaceId(){
		return this.palaceId;
	}
	public void setPalaceName(String palaceName){
		this.palaceName = palaceName;
	}
	public String getPalaceName(){
		return this.palaceName;
	}
	public void setPalaceAddress(String palaceAddress){
		this.palaceAddress = palaceAddress;
	}
	public String getPalaceAddress(){
		return this.palaceAddress;
	}
	public void setPalaceDesc(String palaceDesc){
		this.palaceDesc = palaceDesc;
	}
	public String getPalaceDesc(){
		return this.palaceDesc;
	}
	public void setStatus(Short status){
		this.status = status;
	}
	public Short getStatus(){
		return this.status;
	}
	public void setCreateTime(Date createTime){
		this.createTime = createTime;
	}
	public Date getCreateTime(){
		return this.createTime;
	}
	public void setCreateUserId(Integer createUserId){
		this.createUserId = createUserId;
	}
	public Integer getCreateUserId(){
		return this.createUserId;
	}
	public void setUpdateTime(Date updateTime){
		this.updateTime = updateTime;
	}
	public Date getUpdateTime(){
		return this.updateTime;
	}
	public void setUpdateUserId(Integer updateUserId){
		this.updateUserId = updateUserId;
	}
	public Integer getUpdateUserId(){
		return this.updateUserId;
	}

}