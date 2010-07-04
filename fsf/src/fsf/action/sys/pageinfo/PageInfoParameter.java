package fsf.action.sys.pageinfo;

import java.util.Date;

import chance.base.BaseParameter;

public class PageInfoParameter extends BaseParameter{

	private String _se_infoName;
	private String _se_infoDesc;
	private String _se_title;
	private String _se_content;
	private Byte _ne_seq;
	private Byte _nne_seq;

	public Byte get_nne_seq() {
		return _nne_seq;
	}
	public void set_nne_seq(Byte _nne_seq) {
		this._nne_seq = _nne_seq;
	}
	public void set_se_infoName(String _se_infoName){
		this._se_infoName = _se_infoName;
	}
	public String get_se_infoName(){
		return this._se_infoName;
	}
	public void set_se_infoDesc(String _se_infoDesc){
		this._se_infoDesc = _se_infoDesc;
	}
	public String get_se_infoDesc(){
		return this._se_infoDesc;
	}
	public void set_se_title(String _se_title){
		this._se_title = _se_title;
	}
	public String get_se_title(){
		return this._se_title;
	}
	public void set_se_content(String _se_content){
		this._se_content = _se_content;
	}
	public String get_se_content(){
		return this._se_content;
	}
	public void set_ne_seq(Byte _ne_seq){
		this._ne_seq = _ne_seq;
	}
	public Byte get_ne_seq(){
		return this._ne_seq;
	}
}