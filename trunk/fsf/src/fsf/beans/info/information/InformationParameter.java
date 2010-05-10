package fsf.action.info.information;

import java.util.Date;

import chance.base.BaseParameter;

public class InformationParameter extends BaseParameter{

	private Integer _ne_informationId;
	private String _slike_informationTitle;
	private String _se_informationContent;
	private Integer _ne_informationType;
	private Short _ne_status;
	private Date _dge_createTime;
	private Date _dle_createTime;
	private Integer _ne_createUserId;
	private Date _de_updateTime;
	private Integer _ne_updateUserId;

	public void set_ne_informationId(Integer _ne_informationId){
		this._ne_informationId = _ne_informationId;
	}
	public Integer get_ne_informationId(){
		return this._ne_informationId;
	}
	public String get_slike_informationTitle() {
		return _slike_informationTitle;
	}
	public void set_slike_informationTitle(String title) {
		_slike_informationTitle = title;
	}
	public void set_se_informationContent(String _se_informationContent){
		this._se_informationContent = _se_informationContent;
	}
	public String get_se_informationContent(){
		return this._se_informationContent;
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
	public Date get_dge_createTime() {
		return _dge_createTime;
	}
	public void set_dge_createTime(Date time) {
		_dge_createTime = time;
	}
	public Date get_dle_createTime() {
		return _dle_createTime;
	}
	public void set_dle_createTime(Date time) {
		_dle_createTime = time;
	}
	public void set_ne_createUserId(Integer _ne_createUserId){
		this._ne_createUserId = _ne_createUserId;
	}
	public Integer get_ne_createUserId(){
		return this._ne_createUserId;
	}
	public void set_de_updateTime(Date _de_updateTime){
		this._de_updateTime = _de_updateTime;
	}
	public Date get_de_updateTime(){
		return this._de_updateTime;
	}
	public void set_ne_updateUserId(Integer _ne_updateUserId){
		this._ne_updateUserId = _ne_updateUserId;
	}
	public Integer get_ne_updateUserId(){
		return this._ne_updateUserId;
	}
}