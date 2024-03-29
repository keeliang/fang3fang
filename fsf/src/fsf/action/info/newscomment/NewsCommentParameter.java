package fsf.action.info.newscomment;

import java.util.Date;

import chance.base.BaseParameter;

public class NewsCommentParameter extends BaseParameter{

	private Integer _ne_commentId;
	private String _se_content;
	private Integer _ne_newsId;
	private String _se_ip;
	private Short _ne_status;
	private Date _dge_createTime;
	private Date _dle_createTime;
	private Integer _ne_createUserId;
	private Date _de_updateTime;
	private Integer _ne_updateUserId;

	public void set_ne_commentId(Integer _ne_commentId){
		this._ne_commentId = _ne_commentId;
	}
	public Integer get_ne_commentId(){
		return this._ne_commentId;
	}
	public void set_se_content(String _se_content){
		this._se_content = _se_content;
	}
	public String get_se_content(){
		return this._se_content;
	}

	public Integer get_ne_newsId() {
		return _ne_newsId;
	}
	public void set_ne_newsId(Integer id) {
		_ne_newsId = id;
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
}