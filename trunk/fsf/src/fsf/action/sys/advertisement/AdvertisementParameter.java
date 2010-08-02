package fsf.action.sys.advertisement;

import chance.base.BaseParameter;

public class AdvertisementParameter extends BaseParameter{

	private String _se_advertisementName;
	private String _se_advertisementDesc;
	private String _se_imagePath;
	private String _se_title;
	private Byte _nne_type;
	private Byte _ne_type;

	public void set_se_advertisementName(String _se_advertisementName){
		this._se_advertisementName = _se_advertisementName;
	}
	public String get_se_advertisementName(){
		return this._se_advertisementName;
	}
	public void set_se_advertisementDesc(String _se_advertisementDesc){
		this._se_advertisementDesc = _se_advertisementDesc;
	}
	public String get_se_advertisementDesc(){
		return this._se_advertisementDesc;
	}
	public void set_se_imagePath(String _se_imagePath){
		this._se_imagePath = _se_imagePath;
	}
	public String get_se_imagePath(){
		return this._se_imagePath;
	}
	public void set_se_title(String _se_title){
		this._se_title = _se_title;
	}
	public String get_se_title(){
		return this._se_title;
	}
	public Byte get_nne_type() {
		return _nne_type;
	}
	public void set_nne_type(Byte _nne_type) {
		this._nne_type = _nne_type;
	}
	public Byte get_ne_type() {
		return _ne_type;
	}
	public void set_ne_type(Byte _ne_type) {
		this._ne_type = _ne_type;
	}
	
}