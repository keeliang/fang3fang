package fsf.action.info.newtype;

import java.util.Date;

import chance.base.BaseParameter;

public class NewTypeParameter extends BaseParameter{

	private Integer _ne_newTypeId;
	private String _se_title;
	private Integer _ne_seq;
	private Short _ne_status;
	private Date _de_createTime;
	private Integer _ne_createUserId;
	private Date _de_modifyTime;
	private Integer _ne_modifyUserId;

	public void set_ne_newTypeId(Integer _ne_newTypeId){
		this._ne_newTypeId = _ne_newTypeId;
	}
	public Integer get_ne_newTypeId(){
		return this._ne_newTypeId;
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