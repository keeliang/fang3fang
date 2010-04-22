package fsf.action.info.information;

import java.util.Date;

import chance.base.BaseParameter;

public class InformationParameter extends BaseParameter{

	private Integer _ne_informationId;
	private String _se_informationTitle;
	private String _se_informationContent;
	private Short _ne_isNew;
	private Integer _ne_informationType;
	private Short _ne_status;
	private Date _de_createTime;
	private Integer _ne_createUserId;
	private Date _de_modifyTime;
	private Integer _ne_modifyUserId;

	public void set_ne_informationId(Integer _ne_informationId){
		this._ne_informationId = _ne_informationId;
	}
	public Integer get_ne_informationId(){
		return this._ne_informationId;
	}
	public void set_se_informationTitle(String _se_informationTitle){
		this._se_informationTitle = _se_informationTitle;
	}
	public String get_se_informationTitle(){
		return this._se_informationTitle;
	}
	public void set_se_informationContent(String _se_informationContent){
		this._se_informationContent = _se_informationContent;
	}
	public String get_se_informationContent(){
		return this._se_informationContent;
	}
	public void set_ne_isNew(Short _ne_isNew){
		this._ne_isNew = _ne_isNew;
	}
	public Short get_ne_isNew(){
		return this._ne_isNew;
	}
	public void set_ne_informationType(Integer _ne_informationType){
		this._ne_informationType = _ne_informationType;
	}
	public Integer get_ne_informationType(){
		return this._ne_informationType;
	}
	public void set_ne_status(Short _ne_status){
		this._ne_status = _ne_status;
	}
	public Short get_ne_status(){
		return this._ne_status;
	}
	public void set_de_createTime(Date _de_createTime){
		this._de_createTime = _de_createTime;
	}
	public Date get_de_createTime(){
		return this._de_createTime;
	}
	public void set_ne_createUserId(Integer _ne_createUserId){
		this._ne_createUserId = _ne_createUserId;
	}
	public Integer get_ne_createUserId(){
		return this._ne_createUserId;
	}
	public void set_de_modifyTime(Date _de_modifyTime){
		this._de_modifyTime = _de_modifyTime;
	}
	public Date get_de_modifyTime(){
		return this._de_modifyTime;
	}
	public void set_ne_modifyUserId(Integer _ne_modifyUserId){
		this._ne_modifyUserId = _ne_modifyUserId;
	}
	public Integer get_ne_modifyUserId(){
		return this._ne_modifyUserId;
	}
}