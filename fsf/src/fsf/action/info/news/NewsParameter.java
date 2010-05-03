package fsf.action.info.news;

import java.util.Date;

import chance.base.BaseParameter;

public class NewsParameter extends BaseParameter {

	private Integer _ne_newsId;
	private String _slike_newsTitle;
	private String _se_newsContent;
	private Integer _ne_newsTypeId;
	private Short _ne_status;
	private Date _dge_createTime;
	private Date _dle_createTime;
	private Integer _ne_createUserId;
	private Date _de_updateTime;
	private Integer _ne_updateUserId;

	public void set_ne_newsId(Integer _ne_newsId) {
		this._ne_newsId = _ne_newsId;
	}

	public Integer get_ne_newsId() {
		return this._ne_newsId;
	}


	public String get_slike_newsTitle() {
		return _slike_newsTitle;
	}

	public void set_slike_newsTitle(String title) {
		_slike_newsTitle = title;
	}

	public String get_se_newsContent() {
		return _se_newsContent;
	}

	public void set_se_newsContent(String content) {
		_se_newsContent = content;
	}

	public Integer get_ne_newsTypeId() {
		return _ne_newsTypeId;
	}

	public void set_ne_newsTypeId(Integer typeId) {
		_ne_newsTypeId = typeId;
	}

	public void set_ne_status(Short _ne_status) {
		this._ne_status = _ne_status;
	}

	public Short get_ne_status() {
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

	public void set_ne_createUserId(Integer _ne_createUserId) {
		this._ne_createUserId = _ne_createUserId;
	}

	public Integer get_ne_createUserId() {
		return this._ne_createUserId;
	}

	public void set_de_updateTime(Date _de_updateTime) {
		this._de_updateTime = _de_updateTime;
	}

	public Date get_de_updateTime() {
		return this._de_updateTime;
	}

	public void set_ne_updateUserId(Integer _ne_updateUserId) {
		this._ne_updateUserId = _ne_updateUserId;
	}

	public Integer get_ne_updateUserId() {
		return this._ne_updateUserId;
	}
}