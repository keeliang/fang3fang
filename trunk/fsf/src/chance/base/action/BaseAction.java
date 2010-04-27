package chance.base.action;

import java.io.Serializable;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import chance.base.BaseParameter;
import chance.base.service.Service;
import chance.common.PageView;
import chance.common.QueryResult;
import chance.exception.ServiceException;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.PropertyUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import fsf.service.sys.dict.DictItemService;
/**
 * 
 * @author yws
 *
 * @param <E>
 */
public abstract class BaseAction<E> extends ActionSupport {
	
	private static final long serialVersionUID = -6546324092910006337L;
	public static final String CMD_NEW = "new";
	public static final String CMD_EDIT = "edit";
	public static final String NOPRIVILEGE = "noPrivilege";
	
	protected Service<E> service;
	
	@Resource
	protected DictItemService dictItemService;
	
	protected Class<E> entityClass;
	
	protected BaseParameter baseParameter;
	/**
	 * primary key array
	 */
	protected String[] pkArray;
	/**
	 * page view
	 */
	private PageView<E> pageView;
	/**
	 * commond type "new" or "edit"
	 */
	private String cmd;
	/**
	 * selected primary key array
	 */
	private String[] selectedPK;
	/**
	 * is business primary key
	 */
	private boolean isBusinessPK = false;
	
	public BaseAction(){
	}
	
	public BaseAction(Class<E> entityClass,String[] pkArray){
		this.entityClass = entityClass;
		this.pkArray = pkArray;
	}
	public BaseAction(Class<E> entityClass,String[] pkArray,boolean isBusinessPK){
		this.entityClass = entityClass;
		this.pkArray = pkArray;
		this.isBusinessPK = isBusinessPK;
	}
	
	public String doList() throws Exception {
		try {
			if(baseParameter==null){
				return SUCCESS;
			}
			if(baseParameter.getMaxResults()==null){
				baseParameter.setMaxResults(10);
			}
			if(baseParameter.getCurrentPage()==null){
				baseParameter.setCurrentPage(1);
			}
			QueryResult<E> queryResult = service.doPaginationQuery(baseParameter);
			pageView = new PageView<E>(baseParameter.getMaxResults(),baseParameter.getCurrentPage());
			pageView.setQueryResult(queryResult);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		return SUCCESS;
	}
	
	public String doNew() throws Exception{
		cmd = CMD_NEW;
		initData();
		return SUCCESS;
	}
	/**
	 * save or update
	 * @return
	 * @throws Exception
	 */
	public String doSave()throws Exception{
		E entity = null;
		try{
			entity = entityClass.newInstance();
			if(CMD_NEW.equals(cmd)){
				beforePersist();
				BeanUtils.copyProperties(entity, this);
				service.persist(entity);
			}else if(CMD_EDIT.equals(cmd)){
				beforeUpdate();
				BeanUtils.copyProperties(entity, this);
				//business primary key
				if(isBusinessPK){
					boolean blnUpd = true;
					for(String pk : pkArray){
						Object newVal = PropertyUtils.getNestedProperty(this, pk);
						Object oldVal = PropertyUtils.getNestedProperty(this, "old_"+pk);
						if(!oldVal.equals(newVal)){
							Object pkVal = null;
							if(pkArray.length==1){
								pkVal = PropertyUtils.getNestedProperty(this, "old_"+pkArray[0]);
							}else{
								pkVal = entityClass.newInstance();
								for(int i = 0;i<pkArray.length;i++){
									BeanUtils.setProperty(pkVal, pkArray[i], PropertyUtils.getNestedProperty(this, "old_"+pkArray[i]));
								}
							}
							service.update(entity,(Serializable)pkVal);
							blnUpd = false;
							break;
						}
					}
					if(blnUpd)
						service.update(entity);
				}else{
					service.update(entity);
				}
			}
			addActionMessage(getText("g_saveSuccess"));
		} catch (Exception e) {
			handleSaveException(e);
		}
		cmd = CMD_EDIT;
		restoreContent(entity);
		return SUCCESS;
	}
	/**
	 * go to edit page
	 * @return
	 * @throws Exception
	 */
	public String doEdit()throws Exception{
		cmd = CMD_EDIT;
		E entity = null;
		try{
			if(pkArray.length==1){
				Object pk = PropertyUtils.getNestedProperty(this, pkArray[0]);
				entity = service.get((Serializable)pk);
			}else if (pkArray.length>1){
				Object pk = entityClass.newInstance();
				for(int i = 0;i<pkArray.length;i++){
					BeanUtils.setProperty(pk, pkArray[i], PropertyUtils.getNestedProperty(this, pkArray[i]));
				}
				entity = service.get((Serializable)pk);
			}
			restoreContent(entity);
		}catch (Exception e) {
			handleEditException(e);
		}
		return SUCCESS;
	}
	
	/**
	 * batch delete by id in a transaction
	 * @return
	 * @throws Exception
	 */
	public String doDelete()throws Exception{
		String[] strPk = getSelectedPK();
		if(strPk==null || strPk.length<1)
			return SUCCESS;
		Serializable[] arrayObj = new Serializable[strPk.length];
		if(pkArray.length==1){
			for(int i = 0 ; i<strPk.length;i++){
				arrayObj[i] = (Serializable)entityClass.newInstance();
				BeanUtils.setProperty(arrayObj[i], pkArray[0], strPk[i]);
				//get nested property from instance
				arrayObj[i] = (Serializable)PropertyUtils.getNestedProperty(arrayObj[i], pkArray[0]);
			}
		}else if(pkArray.length>1){
			for(int i = 0 ; i<strPk.length;i++){
				String[] valuePk = strPk[i].split("\\|");
				arrayObj[i] = (Serializable)entityClass.newInstance();
				for(int j = 0;j<pkArray.length;j++){
					BeanUtils.setProperty(arrayObj[i], pkArray[j], valuePk[j]);
				}
			}
		}
		try {
			service.deleteByPK(arrayObj);	
		} catch (Exception e) {
			handleDeleteException(e);
		}
		baseParameter.setCurrentPage(1);
		return doList();
	}
	
	protected void handleDeleteException(Exception e)throws Exception {
		handleDefaultException(e);
	}
	
	protected void handleSaveException(Exception e)throws Exception{
		handleDefaultException(e);
	}
	
	protected void handleEditException(Exception e)throws Exception{
		handleDefaultException(e);
	}
	
	/**
	 * default handle Exception for save/delete/edit
	 * @param e
	 * @throws Exception
	 */
	protected void handleDefaultException(Exception e)throws Exception {
		if(e instanceof ServiceException)
			//service error handle by subclass
			handleDefaultServiceException((ServiceException)e);
		else{
			//checked exception
			addActionMessage(e.getMessage());
			e.printStackTrace();
			throw e;
		}
	}
	/**
	 * default handle ServiceException for save/delete/edit
	 * @param se
	 */
	protected void handleDefaultServiceException(ServiceException se){
		if(se.getExceptionCode()!=null){
			addActionMessage(getText(se.getExceptionCode().getCode(),se.getParameters()));
			return;
		}
		throw se;
	}
	/**
	 * override this method to initialize data for doNew()
	 */
	protected void initData(){}
	/**
	 * override this method to change property before persist
	 */
	protected void beforePersist() {}
	/**
	 * override this method to change property before update
	 */
	protected void beforeUpdate(){}
	/**
	 * reset the action instance properties
	 * @param entity
	 * @throws Exception
	 */
	private void restoreContent(E entity)throws Exception{
		if(entity!=null){
			BeanUtils.copyProperties(this, entity);
			if(isBusinessPK)
				for(String pk : pkArray){
					BeanUtils.setProperty(this, "old_"+pk, BeanUtils.getProperty(entity, pk));
				}
		}
	}

	public ServletContext getServletContext(){
		return ServletActionContext.getServletContext();
	}
	public HttpSession getHttpSession(){
		return getHttpServletRequest().getSession();
	}
	public HttpServletRequest getHttpServletRequest(){
		return ServletActionContext.getRequest();
	}
	public HttpServletResponse getHttpServletResponse(){
		return ServletActionContext.getResponse();
	}
	public ActionContext getActionContext(){
		return ActionContext.getContext();
	}

	public BaseParameter getBaseParameter() {
		return baseParameter;
	}

	public Service<E> getService() {
		return service;
	}

	public void setService(Service<E> service) {
		this.service = service;
	}

	public PageView<E> getPageView() {
		return pageView;
	}

	public void setPageView(PageView<E> pageView) {
		this.pageView = pageView;
	}

	public String getCmd() {
		return cmd;
	}

	public void setCmd(String cmd) {
		this.cmd = cmd;
	}

	public String[] getSelectedPK() {
		return selectedPK;
	}

	public void setSelectedPK(String[] selectedPK) {
		this.selectedPK = selectedPK;
	}
}