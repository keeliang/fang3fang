package fsf.action.info.news;

import java.util.Date;

import chance.base.BaseParameter;

public class NewsParameter extends BaseParameter{

	private Integer _ne_newsId;
	private String _se_informationTitle;
	private String _se_informationContent;
	private Integer _ne_informationType;
	private Short _ne_status;
	private Date _de_createTime;
	private Integer _ne_createUserId;
	private Date _de_updateTime;
	private Integer _ne_updateUserId;

	public void set_ne_newsId(Integer _ne_newsId){
		this._ne_newsId = _ne_newsId;
	}
	public Integer get_ne_newsId(){
		return this._ne_newsId;
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