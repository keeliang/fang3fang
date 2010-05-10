package fsf.action.est.palace;

import java.util.Date;

import chance.base.BaseParameter;

public class PalaceParameter extends BaseParameter{

	private Integer _ne_palaceId;
	private String _slike_palaceName;
	private String _se_palaceAddress;
	private String _se_palaceDesc;
	private Short _ne_status;
	private Date _dge_createTime;
	private Date _dle_createTime;
	private Integer _ne_createUserId;
	private Date _de_updateTime;
	private Integer _ne_updateUserId;

	public void set_ne_palaceId(Integer _ne_palaceId){
		this._ne_palaceId = _ne_palaceId;
	}
	public Integer get_ne_palaceId(){
		return this._ne_palaceId;
	}
	public void set_se_palaceAddress(String _se_palaceAddress){
		this._se_palaceAddress = _se_palaceAddress;
	}
	public String get_se_palaceAddress(){
		return this._se_palaceAddress;
	}
	public void set_se_palaceDesc(String _se_palaceDesc){
		this._se_palaceDesc = _se_palaceDesc;
	}
	public String get_se_palaceDesc(){
		return this._se_palaceDesc;
	}
	public void set_ne_status(Short _ne_status){
		this._ne_status = _ne_status;
	}
	public Short get_ne_status(){
		return this._ne_status;
	}
	public String get_slike_palaceName() {
		return _slike_palaceName;
	}
	public void set_slike_palaceName(String name) {
		_slike_palaceName = name;
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