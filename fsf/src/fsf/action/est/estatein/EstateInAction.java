package fsf.action.est.estatein;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.PropertyUtils;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import chance.base.BaseParameter;
import chance.base.action.BaseAction;
import fsf.beans.est.estatein.EstateIn;
import fsf.beans.sys.dict.DictItem;
import fsf.beans.sys.user.User;
import fsf.service.est.estatein.EstateInService;
import fsf.service.sys.user.UserService;
import fsf.web.common.ThreadUser;

@Controller
@Scope("prototype")
public class EstateInAction extends BaseAction<EstateIn> {
	
	public EstateInAction() {
		super(EstateIn.class, new String[] { "estateId" });
	}
	
	@Resource
	private UserService userService;
	
	public String doExamineSubmit()throws Exception{
		EstateIn eo = getService().get(estateId);
		eo.setExamine(examine);
		if(((short)1)==examine){
			eo.setContactUserId(contactUserId);
		}else{
			eo.setContactUserId(null);
			eo.setExamineUserId(null);
		}
		getService().update(eo);
		addActionMessage(getText("g_saveSuccess"));
		return doEdit();
	}
	
	public String doOwnExamineSubmitBatch()throws Exception{
		String[] strPk = getSelectedPK();
		if(strPk==null || strPk.length<1)
			return SUCCESS;
		if(examine==null){
			return INPUT;
		}
		Serializable[] arrayObj = new Serializable[strPk.length];
		for(int i = 0 ; i<strPk.length;i++){
			arrayObj[i] = (Serializable)entityClass.newInstance();
			BeanUtils.setProperty(arrayObj[i], pkArray[0], strPk[i]);
			arrayObj[i] = (Serializable)PropertyUtils.getNestedProperty(arrayObj[i], pkArray[0]);
		}
		try{
			getService().updateByProperties("estateId", arrayObj,
					new String[]{"examine","examineUserId"},
					new Serializable[]{examine,examine==(short)1?ThreadUser.get().getUserId():null});	
		}catch (Exception e) {
			handleEditException(e);
		}
		addActionMessage(getText("g_saveSuccess"));
		return doList();
	}
	
	public String doOwnExamineSubmit()throws Exception{
		if(examine==null || estateId ==null){
			return SUCCESS;
		}
		try{
			getService().updateByProperties("estateId", new Serializable[]{estateId}, 
					new String[]{"examine","updateUserId","updateTime"}, 
					new Serializable[]{examine,examine==(short)1?ThreadUser.get().getUserId():null});
		}catch (Exception e) {
			handleEditException(e);
		}
		addActionMessage(getText("g_saveSuccess"));
		return doEdit();
	}
	
	public String doExamine() throws Exception {
		EstateIn eo = getService().get(estateId); 
		if(eo!=null)
			restoreContent(eo);
		else{
			
		}
		return SUCCESS;
	}
	
	@Override
	public String doEdit() throws Exception {
		if(!CMD_SELECT.equals(getCmd())){
			setCmd(CMD_EDIT);
		}
		EstateIn entity = null;
		try{
			Object pk = PropertyUtils.getNestedProperty(this, pkArray[0]);
			entity = service.get((Serializable)pk);
			restoreContent(entity);
			if(entity!=null && entity.getContactUserId()!=null){
				contactUser = userService.get(entity.getContactUserId());
			}
		}catch (Exception e) {
			handleEditException(e);
		}
		return SUCCESS;
	}
	
	public String getCityList() throws Exception {
		BaseParameter param = new BaseParameter();
		param.getQueryDynamicConditions().put("_ne_province_id", provinceId);
		List<DictItem> list = dictItemService.getDaynamicConfig("sys_city","city_id","city_name",param);
		JSONObject json = new JSONObject();
		json.put("data", JSONArray.fromObject(list));
		getHttpServletResponse().setCharacterEncoding("UTF-8");
		getHttpServletResponse().getWriter().write(json.toString());
		return null;
	}
	
	public String getDistrictList() throws Exception {
		BaseParameter param = new BaseParameter();
		param.getQueryDynamicConditions().put("_ne_province_id", provinceId);
		param.getQueryDynamicConditions().put("_ne_city_id", cityId);
		List<DictItem> list = dictItemService.getDaynamicConfig("sys_district","district_id","district_name",param);
		JSONObject json = new JSONObject();
		json.put("data", JSONArray.fromObject(list));
		getHttpServletResponse().setCharacterEncoding("UTF-8");
		getHttpServletResponse().getWriter().write(json.toString());
		return null;
	}
	
	public String getBusinessareaList() throws Exception {
		BaseParameter param = new BaseParameter();
		param.getQueryDynamicConditions().put("_ne_province_id", provinceId);
		param.getQueryDynamicConditions().put("_ne_city_id", cityId);
		param.getQueryDynamicConditions().put("_ne_district_id", districtId);
		List<DictItem> list = dictItemService.getDaynamicConfig("est_businessarea","area_id","area_name",param);
		JSONObject json = new JSONObject();
		json.put("data", JSONArray.fromObject(list));
		getHttpServletResponse().setCharacterEncoding("UTF-8");
		getHttpServletResponse().getWriter().write(json.toString());
		return null;
	}
	
	@Override
	protected void initData() {
		User u = ThreadUser.get();
		contactUserId = u.getUserId();
		Date d = new Date();
		createUserId = u.getUserId();
		createTime = d;
		updateUserId = u.getUserId();
		updateTime = d;
		examine = (short)0;
	}
	@Override
	protected void beforePersist() {
		User u = ThreadUser.get();
		contactUserId = u.getUserId();
		createUserId = u.getUserId();
		Date d = new Date();
		createTime = d;
		updateUserId = u.getUserId();
		updateTime = d;
		examine = (short)1;
		examineUserId = u.getUserId();
	}
	@Override
	protected void beforeUpdate() {
		User u = ThreadUser.get();
		contactUserId = u.getUserId();
		updateUserId = u.getUserId();
		updateTime = new Date();
	}
	
	@Resource
	public void setEstateInService(EstateInService estateInService){
		this.service = estateInService;
	}
	
	public EstateInService getEstateInService(){
		return (EstateInService)this.service;
	}

	public void setEstateInParameter(EstateInParameter param){
		this.baseParameter = param;
	}
	public EstateInParameter getEstateInParameter(){
		return (EstateInParameter)baseParameter;
	}
	
	private User contactUser;
	
	private Integer estateId;
	private String title;
	private Integer provinceId;
	private Integer cityId;
	private Integer districtId;
	private Integer areaId;
	private Short tradeType;
	private Integer contactUserId;
	private Short examine;
	private Integer examineUserId;
	private Short tradeMode;
	private Short estateType;
	private Integer hall;
	private Integer bedroom;
	private Integer toilet;
	private Integer porch;
	private Integer toward;
	private Float buyPriceFrom;
	private Float buyPriceTo;
	private Float rentPriceFrom;
	private Float rentPriceTo;
	private Float areaFrom;
	private Float areaTo;
	private Short isLift;
	private Short fitment;
	private Short device;
	private String remark;
	private Date createTime;
	private Integer createUserId;
	private Date updateTime;
	private Integer updateUserId;

	public void setEstateId(Integer estateId){
		this.estateId = estateId;
	}
	public Integer getEstateId(){
		return this.estateId;
	}
	public void setTitle(String title){
		this.title = title;
	}
	public String getTitle(){
		return this.title;
	}
	public void setProvinceId(Integer provinceId){
		this.provinceId = provinceId;
	}
	public Integer getProvinceId(){
		return this.provinceId;
	}
	public void setCityId(Integer cityId){
		this.cityId = cityId;
	}
	public Integer getCityId(){
		return this.cityId;
	}
	public void setDistrictId(Integer districtId){
		this.districtId = districtId;
	}
	public Integer getDistrictId(){
		return this.districtId;
	}
	public void setAreaId(Integer areaId){
		this.areaId = areaId;
	}
	public Integer getAreaId(){
		return this.areaId;
	}
	public void setExamine(Short examine){
		this.examine = examine;
	}
	public Short getExamine(){
		return this.examine;
	}
	public void setTradeMode(Short tradeMode){
		this.tradeMode = tradeMode;
	}
	public Short getTradeMode(){
		return this.tradeMode;
	}
	public void setEstateType(Short estateType){
		this.estateType = estateType;
	}
	public Short getEstateType(){
		return this.estateType;
	}
	public void setHall(Integer hall){
		this.hall = hall;
	}
	public Integer getHall(){
		return this.hall;
	}
	public void setBedroom(Integer bedroom){
		this.bedroom = bedroom;
	}
	public Integer getBedroom(){
		return this.bedroom;
	}
	public void setToilet(Integer toilet){
		this.toilet = toilet;
	}
	public Integer getToilet(){
		return this.toilet;
	}
	public void setPorch(Integer porch){
		this.porch = porch;
	}
	public Integer getPorch(){
		return this.porch;
	}
	public void setToward(Integer toward){
		this.toward = toward;
	}
	public Integer getToward(){
		return this.toward;
	}
	public void setBuyPriceFrom(Float buyPriceFrom){
		this.buyPriceFrom = buyPriceFrom;
	}
	public Float getBuyPriceFrom(){
		return this.buyPriceFrom;
	}
	public void setBuyPriceTo(Float buyPriceTo){
		this.buyPriceTo = buyPriceTo;
	}
	public Float getBuyPriceTo(){
		return this.buyPriceTo;
	}
	public void setRentPriceFrom(Float rentPriceFrom){
		this.rentPriceFrom = rentPriceFrom;
	}
	public Float getRentPriceFrom(){
		return this.rentPriceFrom;
	}
	public void setRentPriceTo(Float rentPriceTo){
		this.rentPriceTo = rentPriceTo;
	}
	public Float getRentPriceTo(){
		return this.rentPriceTo;
	}
	public void setAreaFrom(Float areaFrom){
		this.areaFrom = areaFrom;
	}
	public Float getAreaFrom(){
		return this.areaFrom;
	}
	public void setAreaTo(Float areaTo){
		this.areaTo = areaTo;
	}
	public Float getAreaTo(){
		return this.areaTo;
	}
	public void setIsLift(Short isLift){
		this.isLift = isLift;
	}
	public Short getIsLift(){
		return this.isLift;
	}
	public void setFitment(Short fitment){
		this.fitment = fitment;
	}
	public Short getFitment(){
		return this.fitment;
	}
	public void setDevice(Short device){
		this.device = device;
	}
	public Short getDevice(){
		return this.device;
	}
	public void setRemark(String remark){
		this.remark = remark;
	}
	public String getRemark(){
		return this.remark;
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

	public Short getTradeType() {
		return tradeType;
	}

	public void setTradeType(Short tradeType) {
		this.tradeType = tradeType;
	}

	public Integer getContactUserId() {
		return contactUserId;
	}

	public void setContactUserId(Integer contactUserId) {
		this.contactUserId = contactUserId;
	}

	public User getContactUser() {
		return contactUser;
	}

	public void setContactUser(User contactUser) {
		this.contactUser = contactUser;
	}

	public Integer getExamineUserId() {
		return examineUserId;
	}

	public void setExamineUserId(Integer examineUserId) {
		this.examineUserId = examineUserId;
	}
	

}