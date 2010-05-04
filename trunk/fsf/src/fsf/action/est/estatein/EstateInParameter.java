package fsf.action.est.estatein;

import java.util.Date;

import chance.base.BaseParameter;

public class EstateInParameter extends BaseParameter{

	private Integer _ne_estateId;
	private String _slike_title;
	private Integer _ne_provinceId;
	private Integer _ne_cityId;
	private Integer _ne_districtId;
	private Integer _ne_areaId;
	private Short _ne_examine;
	private Short _ne_tradeMode;
	private Short _ne_estateType;
	private Integer _ne_hall;
	private Integer _ne_bedroom;
	private Integer _ne_toilet;
	private Integer _ne_porch;
	private Integer _ne_toward;
	private Float _nge_buyPriceFrom;
	private Float _nle_buyPriceTo;
	private Float _nge_rentPriceFrom;
	private Float _nle_rentPriceTo;
	private Float _nge_areaFrom;
	private Float _nle_areaTo;
	private Short _ne_isLift;
	private Short _ne_fitment;
	private Short _ne_device;
	private String _se_remark;
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
	public String get_slike_title() {
		return _slike_title;
	}
	public void set_slike_title(String _slike_title) {
		this._slike_title = _slike_title;
	}
	public void set_ne_provinceId(Integer _ne_provinceId){
		this._ne_provinceId = _ne_provinceId;
	}
	public Integer get_ne_provinceId(){
		return this._ne_provinceId;
	}
	public void set_ne_cityId(Integer _ne_cityId){
		this._ne_cityId = _ne_cityId;
	}
	public Integer get_ne_cityId(){
		return this._ne_cityId;
	}
	public void set_ne_districtId(Integer _ne_districtId){
		this._ne_districtId = _ne_districtId;
	}
	public Integer get_ne_districtId(){
		return this._ne_districtId;
	}
	public void set_ne_areaId(Integer _ne_areaId){
		this._ne_areaId = _ne_areaId;
	}
	public Integer get_ne_areaId(){
		return this._ne_areaId;
	}
	public void set_ne_examine(Short _ne_examine){
		this._ne_examine = _ne_examine;
	}
	public Short get_ne_examine(){
		return this._ne_examine;
	}
	public void set_ne_tradeMode(Short _ne_tradeMode){
		this._ne_tradeMode = _ne_tradeMode;
	}
	public Short get_ne_tradeMode(){
		return this._ne_tradeMode;
	}
	public void set_ne_estateType(Short _ne_estateType){
		this._ne_estateType = _ne_estateType;
	}
	public Short get_ne_estateType(){
		return this._ne_estateType;
	}
	public void set_ne_hall(Integer _ne_hall){
		this._ne_hall = _ne_hall;
	}
	public Integer get_ne_hall(){
		return this._ne_hall;
	}
	public void set_ne_bedroom(Integer _ne_bedroom){
		this._ne_bedroom = _ne_bedroom;
	}
	public Integer get_ne_bedroom(){
		return this._ne_bedroom;
	}
	public void set_ne_toilet(Integer _ne_toilet){
		this._ne_toilet = _ne_toilet;
	}
	public Integer get_ne_toilet(){
		return this._ne_toilet;
	}
	public void set_ne_porch(Integer _ne_porch){
		this._ne_porch = _ne_porch;
	}
	public Integer get_ne_porch(){
		return this._ne_porch;
	}
	public void set_ne_toward(Integer _ne_toward){
		this._ne_toward = _ne_toward;
	}
	public Integer get_ne_toward(){
		return this._ne_toward;
	}
	public Float get_nge_buyPriceFrom() {
		return _nge_buyPriceFrom;
	}
	public void set_nge_buyPriceFrom(Float priceFrom) {
		_nge_buyPriceFrom = priceFrom;
	}
	public Float get_nle_buyPriceTo() {
		return _nle_buyPriceTo;
	}
	public void set_nle_buyPriceTo(Float priceTo) {
		_nle_buyPriceTo = priceTo;
	}
	public Float get_nge_rentPriceFrom() {
		return _nge_rentPriceFrom;
	}
	public void set_nge_rentPriceFrom(Float priceFrom) {
		_nge_rentPriceFrom = priceFrom;
	}
	public Float get_nle_rentPriceTo() {
		return _nle_rentPriceTo;
	}
	public void set_nle_rentPriceTo(Float priceTo) {
		_nle_rentPriceTo = priceTo;
	}
	public Float get_nge_areaFrom() {
		return _nge_areaFrom;
	}
	public void set_nge_areaFrom(Float from) {
		_nge_areaFrom = from;
	}
	public Float get_nle_areaTo() {
		return _nle_areaTo;
	}
	public void set_nle_areaTo(Float to) {
		_nle_areaTo = to;
	}
	public void set_ne_isLift(Short _ne_isLift){
		this._ne_isLift = _ne_isLift;
	}
	public Short get_ne_isLift(){
		return this._ne_isLift;
	}
	public void set_ne_fitment(Short _ne_fitment){
		this._ne_fitment = _ne_fitment;
	}
	public Short get_ne_fitment(){
		return this._ne_fitment;
	}
	public void set_ne_device(Short _ne_device){
		this._ne_device = _ne_device;
	}
	public Short get_ne_device(){
		return this._ne_device;
	}
	public void set_se_remark(String _se_remark){
		this._se_remark = _se_remark;
	}
	public String get_se_remark(){
		return this._se_remark;
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