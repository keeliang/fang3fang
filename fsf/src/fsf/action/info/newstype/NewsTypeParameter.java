package fsf.action.info.newstype;

import java.util.Date;

import chance.base.BaseParameter;

public class NewsTypeParameter extends BaseParameter{

	private Integer _ne_newsTypeId;
	private String _se_title;
	private Integer _ne_seq;
	private Short _ne_status;
	private Date _de_createTime;
	private Integer _ne_createUserId;
	private Date _de_updateTime;
	private Integer _ne_updateUserId;

	public void set_ne_newsTypeId(Integer _ne_newsTypeId){
		this._ne_newsTypeId = _ne_newsTypeId;
	}
	public Integer get_ne_newsTypeId(){
		return this._ne_newsTypeId;
	}
	public void set_se_title(String _se_title){
		this._se_title = _se_title;
	}
	public String get_se_title(){
		return this._se_title;
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