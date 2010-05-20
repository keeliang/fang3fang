package fsf.action.info.information;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import chance.base.action.BaseAction;
import chance.common.QueryResult;
import fsf.beans.info.information.Information;
import fsf.beans.sys.user.User;
import fsf.service.info.information.InformationService;
import fsf.web.common.ThreadUser;

@Controller
@Scope("prototype")
public class InformationAction extends BaseAction<Information> {
	
	public InformationAction() {
		super(Information.class, new String[] { "informationId" });
	}
	
	private List<Information> listInfo;
	
	/**
	 * 首页，不分页，显示top10
	 * @return
	 * @throws Exception
	 */
	public String doIndexList()throws Exception{
		try {
			if(baseParameter==null){
				baseParameter = new InformationParameter();
			}
			baseParameter.setMaxResults(-1);
			baseParameter.setCurrentPage(-1);
			baseParameter.setTopCount(10);
			//((InformationParameter)baseParameter).set_ne_informationType(1);
			QueryResult<Information> queryResult = service.doPaginationQuery(baseParameter);
			listInfo = queryResult.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		return SUCCESS;
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
	public void setInformationService(InformationService informationService){
		this.service = informationService;
	}
	
	public InformationService getInformationService(){
		return (InformationService)this.service;
	}

	public void setInformationParameter(InformationParameter param){
		this.baseParameter = param;
	}
	public InformationParameter getInformationParameter(){
		return (InformationParameter)baseParameter;
	}
	
	private Integer informationId;
	private String informationTitle;
	private String informationContent;
	private Integer informationType;
	private Short status;
	private Date createTime;
	private Integer createUserId;
	private Date updateTime;
	private Integer updateUserId;

	public void setInformationId(Integer informationId){
		this.informationId = informationId;
	}
	public Integer getInformationId(){
		return this.informationId;
	}
	public void setInformationTitle(String informationTitle){
		this.informationTitle = informationTitle;
	}
	public String getInformationTitle(){
		return this.informationTitle;
	}
	public void setInformationContent(String informationContent){
		this.informationContent = informationContent;
	}
	public String getInformationContent(){
		return this.informationContent;
	}
	public void setInformationType(Integer informationType){
		this.informationType = informationType;
	}
	public Integer getInformationType(){
		return this.informationType;
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

	public List<Information> getListInfo() {
		return listInfo;
	}

	public void setListInfo(List<Information> listInfo) {
		this.listInfo = listInfo;
	}

}