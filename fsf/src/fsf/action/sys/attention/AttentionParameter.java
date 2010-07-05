package fsf.action.sys.attention;

import java.util.Date;

import chance.base.BaseParameter;

public class AttentionParameter extends BaseParameter{

	private Integer _ne_attentionId;
	private Short _ne_type;
	private Short _ne_status;
	private String _slike_title;
	private String _se_content;
	private Date _de_createTime;

	public void set_ne_attentionId(Integer _ne_attentionId){
		this._ne_attentionId = _ne_attentionId;
	}
	public Integer get_ne_attentionId(){
		return this._ne_attentionId;
	}
	public void set_ne_type(Short _ne_type){
		this._ne_type = _ne_type;
	}
	public Short get_ne_type(){
		return this._ne_type;
	}
	public void set_ne_status(Short _ne_status){
		this._ne_status = _ne_status;
	}
	public Short get_ne_status(){
		return this._ne_status;
	}
	public String get_slike_title() {
		return _slike_title;
	}
	public void set_slike_title(String _slike_title) {
		this._slike_title = _slike_title;
	}
	public void set_se_content(String _se_content){
		this._se_content = _se_content;
	}
	public String get_se_content(){
		return this._se_content;
	}
	public void set_de_createTime(Date _de_createTime){
		this._de_createTime = _de_createTime;
	}
	public Date get_de_createTime(){
		return this._de_createTime;
	}
}