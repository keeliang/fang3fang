package fsf.action.est.comment;

import java.util.Date;

import chance.base.BaseParameter;

public class EstCommentParameter extends BaseParameter{

	private Integer _ne_commentId;
	private Integer _ne_estateId;
	private Short _ne_type;
	private String _se_content;
	private String _se_ip;
	private Short _ne_status;
	private Date _dge_createTime;
	private Date _dle_createTime;
	private Integer _ne_createUserId;
	private Date _de_updateTime;
	private Integer _ne_updateUserId;

	public void set_ne_estateId(Integer _ne_estateId){
		this._ne_estateId = _ne_estateId;
	}
	public Integer get_ne_estateId(){
		return this._ne_estateId;
	}
	public void set_ne_type(Short _ne_type){
		this._ne_type = _ne_type;
	}
	public Short get_ne_type(){
		return this._ne_type;
	}
	public void set_se_content(String _se_content){
		this._se_content = _se_content;
	}
	public String get_se_content(){
		return this._se_content;
	}
	public void set_se_ip(String _se_ip){
		this._se_ip = _se_ip;
	}
	public String get_se_ip(){
		return this._se_ip;
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
	public Integer get_ne_commentId() {
		return _ne_commentId;
	}
	public void set_ne_commentId(Integer id) {
		_ne_commentId = id;
	}
	
}