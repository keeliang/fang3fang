package fsf.action.est.estateout;

import java.io.Serializable;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import net.jforum.util.MD5;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.PropertyUtils;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import chance.base.BaseParameter;
import chance.base.action.UploadBaseAction;
import chance.common.QueryResult;
import fsf.beans.est.commerce.Commerce;
import fsf.beans.est.estateout.EstateOut;
import fsf.beans.sys.dict.DictItem;
import fsf.beans.sys.user.User;
import fsf.service.common.IndexCacheService;
import fsf.service.est.estateout.EstateOutService;
import fsf.service.sys.user.UserService;
import fsf.web.common.ThreadUser;
import fsf.web.common.WebConstant;

@Controller
@Scope("prototype")
public class EstateOutAction extends UploadBaseAction<EstateOut> {
	
	public EstateOutAction() {
		super(EstateOut.class, new String[] { "estateId" },"estate");
	}
	
	@Resource
	private UserService userService;
	
	private String flag = "out";
	/**
	 * 首页的搜索，不分页
	 */
	private List<EstateOut> listEstateOut;
	/**
	 * 自主推荐，top10
	 */
	private List<EstateOut> recommondOwnEstateList;
	/**
	 * 委托推荐，top10
	 */
	private List<EstateOut> recommondEstateList;
	/**
	 * 首页最新有图房源 top4
	 */
	private List<EstateOut> listNewestEstate;
	/**
	 * 首页最新旺铺top8
	 */
	private List<Commerce> listCommerce;
	
	public String doQuery() throws Exception{
		return null;
	}
	/**
	 * 保存发布
	 * @return
	 * @throws Exception
	 */
	public String doReleaseSave()throws Exception{
		EstateOut eo = new EstateOut();
		BeanUtils.copyProperties(eo, this);
		Date d = new Date();
		contactUser.setStatus((short)1);
		contactUser.setCreateDate(d);
		contactUser.setUserType((short)3);
		contactUser.setPhone(contactUser.getUserCode());
		contactUser.setPassword(MD5.crypt(contactUser.getPassword()));
		eo.setCreateTime(d);
		eo.setUpdateTime(d);
		eo.setIsRecommond((short)0);
		try {
			getEstateOutService().doReleaseSave(eo, contactUser);
			getHttpSession().setAttribute(WebConstant.SESSION_USER, contactUser);
		} catch (Exception e) {
			handleDefaultException(e);
		}
		return SUCCESS;
	}
	
	public String doRelease()throws Exception{
		if(getHttpSession().getAttribute(WebConstant.SESSION_USER)==null){
			return SUCCESS;
		}
		return "success2";
	}
	
	public String doExpertRecommond()throws Exception{
		String[] strPk = getSelectedPK();
		if(strPk==null || strPk.length<1)
			return SUCCESS;
		getEstateOutService().doExpertRecommond(isRecommond,strPk);
		return doList();
	}
	
	/**
	 * 首页的最新的有图的房源，top4
	 * @return
	 * @throws Exception
	 */
	public String ajaxNewestEstateList()throws Exception{
		listNewestEstate = IndexCacheService.getListNewestEstate();
		listCommerce = IndexCacheService.getListCommerce();
		return SUCCESS;
	}
	
	/**
	 * 首页的搜房，不分页，显示top10
	 * @return
	 * @throws Exception
	 */
	public String doIndexList()throws Exception{
		try {
			if(baseParameter==null){
				baseParameter = new EstateOutParameter();
			}
			baseParameter.setMaxResults(-1);
			baseParameter.setCurrentPage(-1);
			baseParameter.setTopCount(10);
			if(estateName!=null &&!"".equals(estateName))
				((EstateOutParameter)baseParameter).set_slike_estateName(estateName);
			QueryResult<EstateOut> queryResult = service.doPaginationQuery(baseParameter);
			listEstateOut = queryResult.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		return SUCCESS;
	}
	
	/**
	 * 推荐查询，不分页
	 * @return
	 * @throws Exception
	 */
	public String doRecommondList()throws Exception{
		try {
			if(baseParameter==null){
				baseParameter = new EstateOutParameter();
			}
			baseParameter.setMaxResults(-1);
			baseParameter.setCurrentPage(-1);
			baseParameter.setTopCount(10);
			
			baseParameter.getSortedConditions().put("createTime", BaseParameter.SORTED_DESC);
			((EstateOutParameter)baseParameter).set_ne_isRecommond((short)1);
			((EstateOutParameter)baseParameter).set_ne_tradeType((short)1);
			((EstateOutParameter)baseParameter).set_nin_tradeMode(new Short[]{1,2,3});
			QueryResult<EstateOut> queryResult = service.doPaginationQuery(baseParameter);
			recommondOwnEstateList = queryResult.getResultList();
			
			((EstateOutParameter)baseParameter).set_ne_tradeType((short)2);
			queryResult = service.doPaginationQuery(baseParameter);
			recommondEstateList = queryResult.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		return SUCCESS;
	}
	
	/**
	 * 审核
	 * @return
	 * @throws Exception
	 */
	public String doExamineSubmit()throws Exception{
		EstateOut eo = getService().get(estateId);
		eo.setExamine(examine);
		if(((short)1)==examine){
			eo.setContactUserId(contactUserId);
			eo.setExamineUserId(ThreadUser.get().getUserId());
		}else{
			eo.setContactUserId(null);
			eo.setExamineUserId(null);
		}
		getService().update(eo);
		addActionMessage(getText("g_saveSuccess"));
		return doEdit();
	}
	
	/**
	 * 批量审核
	 * @return
	 * @throws Exception
	 */
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
			getService().updateByProperties("estateId", arrayObj,new String[]{"examine","examineUserId"},
					new Serializable[]{examine,examine==(short)1?ThreadUser.get().getUserId():null});	
		}catch (Exception e) {
			handleEditException(e);
		}
		addActionMessage(getText("g_saveSuccess"));
		return doList();
	}
	
	/**
	 * 审核
	 * @return
	 * @throws Exception
	 */
	public String doRecommond()throws Exception{
		getService().updateByProperty("estateId", new Serializable[]{estateId}, "isRecommond", isRecommond);
		addActionMessage(getText("g_saveSuccess"));
		return doEdit();
	}
	
	/**
	 * 批量推荐
	 */
	public String doRecommondBatch() throws Exception {
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
			getService().updateByProperty("estateId", arrayObj,"isRecommond",isRecommond);	
		}catch (Exception e) {
			handleEditException(e);
		}
		addActionMessage(getText("g_saveSuccess"));
		return doList();
	}
	
	/**
	 * 查看自主交易的信息
	 * @return
	 * @throws Exception
	 */
	public String doOwnExamineSubmit()throws Exception{
		if(examine==null || estateId ==null){
			return SUCCESS;
		}
		try{
			getService().updateByProperties("estateId", new Serializable[]{estateId}, 
					new String[]{"examine","examineUserId"}, 
					new Serializable[]{examine,examine==(short)1?ThreadUser.get().getUserId():null});
		}catch (Exception e) {
			handleEditException(e);
		}
		addActionMessage(getText("g_saveSuccess"));
		return doEdit();
	}
	
	@Override
	/**
	 * 编辑委托交易信息
	 */
	public String doEdit() throws Exception {
		if(!CMD_SELECT.equals(getCmd())){
			setCmd(CMD_EDIT);
		}
		EstateOut entity = null;
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
	
	/**
	 * 
	 * @return
	 * @throws Exception
	 */
	public String doExamine() throws Exception {
		EstateOut eo = getEstateOutService().get(estateId); 
		if(eo!=null)
			restoreContent(eo);
		else{
			
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
//		contactUserId = u.getUserId();
		Date d = new Date();
		createUserId = u.getUserId();
		createTime = d;
		updateUserId = u.getUserId();
		updateTime = d;
//		examine = (short)0;
	}
	@Override
	protected void beforePersist() {
		User u = ThreadUser.get();
//		contactUserId = u.getUserId();
		createUserId = u.getUserId();
		Date d = new Date();
		createTime = d;
		updateUserId = u.getUserId();
		updateTime = d;
//		examine = (short)1;
//		examineUserId = u.getUserId();
	}
	@Override
	protected void beforeUpdate() {
		User u = ThreadUser.get();
		updateUserId = u.getUserId();
		updateTime = new Date();
	}
	
	@Override
	protected void afterPersist() {
		if(contactUserId!=null){
			contactUser = userService.get(contactUserId);
		}
	}
	
	@Override
	protected void afterUpdate() {
		super.afterUpdate();
	}
	
	@Resource
	public void setEstateOutService(EstateOutService estateOutService){
		this.service = estateOutService;
	}
	
	public EstateOutService getEstateOutService(){
		return (EstateOutService)this.service;
	}

	public void setEstateOutParameter(EstateOutParameter param){
		this.baseParameter = param;
	}
	public EstateOutParameter getEstateOutParameter(){
		return (EstateOutParameter)baseParameter;
	}

	private User contactUser;
	
	private Integer estateId;
	private String estateCardNo;
	private Short card5year;
	private String estateName;
	private String develop;
	private Short tradeType;
	private Integer contactUserId;
	private Integer provinceId;
	private Integer cityId;
	private Integer districtId;
	private Integer areaId;
	private Integer palaceId;
	private Short examine;
	private Integer examineUserId;
	private Short tradeMode;
	private Short estateType;
	private Double area;
	private Short isLift;
	private Double practicalArea;
	private Integer effective;
	private String address;
	private Integer toward;
	private Integer floor;
	private Integer totalFloor;
	private Double salePrice;
	private Double rentPrice;
	private Integer hall;
	private Integer bedroom;
	private Integer toilet;
	private Integer porch;
	private Double manageCost;
	private Double waterCost;
	private Double electricCost;
	private Double otherCost;
	private Integer buildYear;
	private Integer minMonth;
	private Double deposit;
	private Short fitment;
	private Short device;
	private Short isRecommond;
	private String remark;
	private String imagePath;
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
	public void setEstateCardNo(String estateCardNo){
		this.estateCardNo = estateCardNo;
	}
	public String getEstateCardNo(){
		return this.estateCardNo;
	}
	public void setCard5year(Short card5year){
		this.card5year = card5year;
	}
	public Short getCard5year(){
		return this.card5year;
	}
	public void setEstateName(String estateName){
		this.estateName = estateName;
	}
	public String getEstateName(){
		return this.estateName;
	}
	public void setDevelop(String develop){
		this.develop = develop;
	}
	public String getDevelop(){
		return this.develop;
	}
	public void setTradeType(Short tradeType){
		this.tradeType = tradeType;
	}
	public Short getTradeType(){
		return this.tradeType;
	}
	public void setContactUserId(Integer contactUserId){
		this.contactUserId = contactUserId;
	}
	public Integer getContactUserId(){
		return this.contactUserId;
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
	public void setArea(Double area){
		this.area = area;
	}
	public Double getArea(){
		return this.area;
	}
	public void setIsLift(Short isLift){
		this.isLift = isLift;
	}
	public Short getIsLift(){
		return this.isLift;
	}
	public void setPracticalArea(Double practicalArea){
		this.practicalArea = practicalArea;
	}
	public Double getPracticalArea(){
		return this.practicalArea;
	}
	public void setEffective(Integer effective){
		this.effective = effective;
	}
	public Integer getEffective(){
		return this.effective;
	}
	
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public void setToward(Integer toward){
		this.toward = toward;
	}
	public Integer getToward(){
		return this.toward;
	}
	public void setFloor(Integer floor){
		this.floor = floor;
	}
	public Integer getFloor(){
		return this.floor;
	}
	public void setTotalFloor(Integer totalFloor){
		this.totalFloor = totalFloor;
	}
	public Integer getTotalFloor(){
		return this.totalFloor;
	}
	public void setSalePrice(Double salePrice){
		this.salePrice = salePrice;
	}
	public Double getSalePrice(){
		return this.salePrice;
	}
	public void setRentPrice(Double rentPrice){
		this.rentPrice = rentPrice;
	}
	public Double getRentPrice(){
		return this.rentPrice;
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
	public void setManageCost(Double manageCost){
		this.manageCost = manageCost;
	}
	public Double getManageCost(){
		return this.manageCost;
	}
	public void setWaterCost(Double waterCost){
		this.waterCost = waterCost;
	}
	public Double getWaterCost(){
		return this.waterCost;
	}
	public void setElectricCost(Double electricCost){
		this.electricCost = electricCost;
	}
	public Double getElectricCost(){
		return this.electricCost;
	}
	public void setOtherCost(Double otherCost){
		this.otherCost = otherCost;
	}
	public Double getOtherCost(){
		return this.otherCost;
	}
	public void setBuildYear(Integer buildYear){
		this.buildYear = buildYear;
	}
	public Integer getBuildYear(){
		return this.buildYear;
	}
	public void setMinMonth(Integer minMonth){
		this.minMonth = minMonth;
	}
	public Integer getMinMonth(){
		return this.minMonth;
	}
	public void setDeposit(Double deposit){
		this.deposit = deposit;
	}
	public Double getDeposit(){
		return this.deposit;
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
	public void setImagePath(String imagePath){
		this.imagePath = imagePath;
	}
	public String getImagePath(){
		return this.imagePath;
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

	public Short getExamine() {
		return examine;
	}

	public void setExamine(Short examine) {
		this.examine = examine;
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

	public Integer getPalaceId() {
		return palaceId;
	}

	public void setPalaceId(Integer palaceId) {
		this.palaceId = palaceId;
	}

	public List<EstateOut> getListEstateOut() {
		return listEstateOut;
	}

	public void setListEstateOut(List<EstateOut> listEstateOut) {
		this.listEstateOut = listEstateOut;
	}

	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

	public Short getIsRecommond() {
		return isRecommond;
	}

	public void setIsRecommond(Short isRecommond) {
		this.isRecommond = isRecommond;
	}

	public List<EstateOut> getRecommondOwnEstateList() {
		return recommondOwnEstateList;
	}

	public void setRecommondOwnEstateList(List<EstateOut> recommondOwnEstateList) {
		this.recommondOwnEstateList = recommondOwnEstateList;
	}

	public List<EstateOut> getRecommondEstateList() {
		return recommondEstateList;
	}

	public void setRecommondEstateList(List<EstateOut> recommondEstateList) {
		this.recommondEstateList = recommondEstateList;
	}
	public List<EstateOut> getListNewestEstate() {
		return listNewestEstate;
	}
	public void setListNewestEstate(List<EstateOut> listNewestEstate) {
		this.listNewestEstate = listNewestEstate;
	}

	public List<Commerce> getListCommerce() {
		return listCommerce;
	}
	public void setListCommerce(List<Commerce> listCommerce) {
		this.listCommerce = listCommerce;
	}
	
	public String getUnitPrice(){
		DecimalFormat df=(DecimalFormat)NumberFormat.getInstance();
		df.setMaximumFractionDigits(2);
		return df.format(salePrice/area);
	}
}