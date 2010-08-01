package fsf.action.info.information;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import chance.base.BaseParameter;
import chance.base.action.UploadBaseAction;
import chance.common.QueryResult;
import fsf.beans.info.information.Information;
import fsf.beans.sys.user.User;
import fsf.service.info.information.InformationService;
import fsf.web.common.ThreadUser;

@Controller
@Scope("prototype")
public class InformationAction extends UploadBaseAction<Information> {
	
	public InformationAction() {
		super(Information.class, new String[] { "informationId" },"infoRoll");
	}
	
	private List<Information> listInfo1;
	private List<Information> listInfo2;
	private List<Information> listInfo3;
	private List<Information> listInfo4;
	private List<Information> listInfo5;
	private List<Information> listInfo6;
	private List<Information> listInfo7;

	private List<Information> listInfo;
	
	private List<Information> listRollInfo;
	
	/**
	 * 资讯首页，不分页，显示top5
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
			baseParameter.setTopCount(5);
			baseParameter.getSortedConditions().put("createTime", BaseParameter.SORTED_DESC);
			InformationParameter p = (InformationParameter)baseParameter;
			p.set_ne_status((short)1);
			
			p.set_ne_informationType(1);
			QueryResult<Information> queryResult = service.doPaginationQuery(baseParameter);
			listInfo1 = queryResult.getResultList();
			
			p.set_ne_informationType(2);
			queryResult = service.doPaginationQuery(baseParameter);
			listInfo2 = queryResult.getResultList();
			
			p.set_ne_informationType(3);
			queryResult = service.doPaginationQuery(baseParameter);
			listInfo3 = queryResult.getResultList();
			
			p.set_ne_informationType(4);
			queryResult = service.doPaginationQuery(baseParameter);
			listInfo4 = queryResult.getResultList();
			
			p.set_ne_informationType(5);
			queryResult = service.doPaginationQuery(baseParameter);
			listInfo5 = queryResult.getResultList();
			
			p.set_ne_informationType(6);
			queryResult = service.doPaginationQuery(baseParameter);
			listInfo6 = queryResult.getResultList();
			
			p.set_ne_informationType(7);
			baseParameter.setTopCount(10);
			queryResult = service.doPaginationQuery(baseParameter);
			listInfo7 = queryResult.getResultList();
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
	private String imagePath;
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

	public List<Information> getListInfo2() {
		return listInfo2;
	}

	public void setListInfo2(List<Information> listInfo2) {
		this.listInfo2 = listInfo2;
	}

	public List<Information> getListInfo3() {
		return listInfo3;
	}

	public void setListInfo3(List<Information> listInfo3) {
		this.listInfo3 = listInfo3;
	}

	public List<Information> getListInfo4() {
		return listInfo4;
	}

	public void setListInfo4(List<Information> listInfo4) {
		this.listInfo4 = listInfo4;
	}

	public List<Information> getListInfo5() {
		return listInfo5;
	}

	public void setListInfo5(List<Information> listInfo5) {
		this.listInfo5 = listInfo5;
	}

	public List<Information> getListInfo6() {
		return listInfo6;
	}

	public void setListInfo6(List<Information> listInfo6) {
		this.listInfo6 = listInfo6;
	}

	public List<Information> getListInfo1() {
		return listInfo1;
	}

	public void setListInfo1(List<Information> listInfo1) {
		this.listInfo1 = listInfo1;
	}

	public List<Information> getListInfo7() {
		return listInfo7;
	}

	public void setListInfo7(List<Information> listInfo7) {
		this.listInfo7 = listInfo7;
	}

	public List<Information> getListInfo() {
		return listInfo;
	}

	public void setListInfo(List<Information> listInfo) {
		this.listInfo = listInfo;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	public List<Information> getListRollInfo() {
		return listRollInfo;
	}

	public void setListRollInfo(List<Information> listRollInfo) {
		this.listRollInfo = listRollInfo;
	}
}