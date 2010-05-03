package fsf.action.info.newstype;

import java.util.Date;

import chance.base.BaseParameter;

public class NewsTypeParameter extends BaseParameter{

	private Integer _ne_newsTypeId;
	private String _slike_title;
	private Integer _ne_seq;
	private Short _ne_status;
	private Date _dge_createTime;
	private Date _dle_createTime;
	private Integer _ne_createUserId;
	private Date _de_updateTime;
	private Integer _ne_updateUserId;

	public void set_ne_newsTypeId(Integer _ne_newsTypeId){
		this._ne_newsTypeId = _ne_newsTypeId;
	}
	public Integer get_ne_newsTypeId(){
		return this._ne_newsTypeId;
	}
	public String get_slike_title() {
		return _slike_title;
	}
	public void set_slike_title(String _slike_title) {
		this._slike_title = _slike_title;
	}
	public void set_ne_seq(Integer _ne_seq){
		this._ne_seq = _ne_seq;
	}
	public Integer get_ne_seq(){
		return this._ne_seq;
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