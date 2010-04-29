package fsf.action.est.estateout;

import java.util.Date;

import chance.base.BaseParameter;

public class EstateOutParameter extends BaseParameter{

	private Integer _ne_estateId;
	private String _se_estateCardNo;
	private Short _ne_card5year;
	private String _se_estateName;
	private String _se_develop;
	private Short _ne_tradeType;
	private Integer _ne_contactUserId;
	private Integer _ne_provinceId;
	private Integer _ne_cityId;
	private Integer _ne_districtId;
	private Integer _ne_areaId;
	private Short _ne_examine;
	private Short _ne_tradeMode;
	private Short _ne_estateType;
	private Double _nge_area;
	private Double _nle_area;
	private Short _ne_isLift;
	private Double _nge_practicalArea;
	private Double _nle_practicalArea;
	private Integer _ne_effective;
	private String _se_address;
	private Integer _ne_toward;
	private Integer _nge_floor;
	private Integer _nle_floor;
	private Integer _nge_totalFloor;
	private Integer _nle_totalFloor;
	private Double _nge_salePrice;
	private Double _nle_salePrice;
	private Double _nge_rentPrice;
	private Double _nle_rentPrice;
	private Integer _ne_hall;
	private Integer _ne_bedroom;
	private Integer _ne_toilet;
	private Integer _ne_porch;
	private Double _ne_manageCost;
	private Double _ne_waterCost;
	private Double _ne_electricCost;
	private Double _ne_otherCost;
	private Integer _ne_buildYear;
	private Integer _ne_minMonth;
	private Double _ne_deposit;
	private Short _ne_fitment;
	private Short _ne_device;
	private String _se_remark;
	private String _se_imagePath;
	private Date _de_createTime;
	private Integer _ne_createUserId;
	private Date _de_updateTime;
	private Integer _ne_updateUserId;

	public void set_ne_estateId(Integer _ne_estateId){
		this._ne_estateId = _ne_estateId;
	}
	public Integer get_ne_estateId(){
		return this._ne_estateId;
	}
	public void set_se_estateCardNo(String _se_estateCardNo){
		this._se_estateCardNo = _se_estateCardNo;
	}
	public String get_se_estateCardNo(){
		return this._se_estateCardNo;
	}
	public void set_ne_card5year(Short _ne_card5year){
		this._ne_card5year = _ne_card5year;
	}
	public Short get_ne_card5year(){
		return this._ne_card5year;
	}
	public void set_se_estateName(String _se_estateName){
		this._se_estateName = _se_estateName;
	}
	public String get_se_estateName(){
		return this._se_estateName;
	}
	public void set_se_develop(String _se_develop){
		this._se_develop = _se_develop;
	}
	public String get_se_develop(){
		return this._se_develop;
	}
	public void set_ne_tradeType(Short _ne_tradeType){
		this._ne_tradeType = _ne_tradeType;
	}
	public Short get_ne_tradeType(){
		return this._ne_tradeType;
	}
	public void set_ne_contactUserId(Integer _ne_contactUserId){
		this._ne_contactUserId = _ne_contactUserId;
	}
	public Integer get_ne_contactUserId(){
		return this._ne_contactUserId;
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
	
	public Double get_nle_area() {
		return _nle_area;
	}
	public void set_nle_area(Double _nle_area) {
		this._nle_area = _nle_area;
	}
	public void set_ne_isLift(Short _ne_isLift){
		this._ne_isLift = _ne_isLift;
	}
	public Short get_ne_isLift(){
		return this._ne_isLift;
	}
	
	public Double get_nge_area() {
		return _nge_area;
	}
	public void set_nge_area(Double _nge_area) {
		this._nge_area = _nge_area;
	}
	public Double get_nge_practicalArea() {
		return _nge_practicalArea;
	}
	public void set_nge_practicalArea(Double area) {
		_nge_practicalArea = area;
	}
	public Double get_nle_practicalArea() {
		return _nle_practicalArea;
	}
	public void set_nle_practicalArea(Double area) {
		_nle_practicalArea = area;
	}
	public void set_ne_effective(Integer _ne_effective){
		this._ne_effective = _ne_effective;
	}
	public Integer get_ne_effective(){
		return this._ne_effective;
	}

	public String get_se_address() {
		return _se_address;
	}
	public void set_se_address(String _se_address) {
		this._se_address = _se_address;
	}
	public void set_ne_toward(Integer _ne_toward){
		this._ne_toward = _ne_toward;
	}
	public Integer get_ne_toward(){
		return this._ne_toward;
	}
	public Integer get_nge_floor() {
		return _nge_floor;
	}
	public void set_nge_floor(Integer _nge_floor) {
		this._nge_floor = _nge_floor;
	}
	public Integer get_nle_floor() {
		return _nle_floor;
	}
	public void set_nle_floor(Integer _nle_floor) {
		this._nle_floor = _nle_floor;
	}
	public Integer get_nge_totalFloor() {
		return _nge_totalFloor;
	}
	public void set_nge_totalFloor(Integer floor) {
		_nge_totalFloor = floor;
	}
	public Integer get_nle_totalFloor() {
		return _nle_totalFloor;
	}
	public void set_nle_totalFloor(Integer floor) {
		_nle_totalFloor = floor;
	}
	
	public Double get_nge_salePrice() {
		return _nge_salePrice;
	}
	public void set_nge_salePrice(Double price) {
		_nge_salePrice = price;
	}
	public Double get_nle_salePrice() {
		return _nle_salePrice;
	}
	public void set_nle_salePrice(Double price) {
		_nle_salePrice = price;
	}
	public Double get_nge_rentPrice() {
		return _nge_rentPrice;
	}
	public void set_nge_rentPrice(Double price) {
		_nge_rentPrice = price;
	}
	public Double get_nle_rentPrice() {
		return _nle_rentPrice;
	}
	public void set_nle_rentPrice(Double price) {
		_nle_rentPrice = price;
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
	public void set_ne_manageCost(Double _ne_manageCost){
		this._ne_manageCost = _ne_manageCost;
	}
	public Double get_ne_manageCost(){
		return this._ne_manageCost;
	}
	public void set_ne_waterCost(Double _ne_waterCost){
		this._ne_waterCost = _ne_waterCost;
	}
	public Double get_ne_waterCost(){
		return this._ne_waterCost;
	}
	public void set_ne_electricCost(Double _ne_electricCost){
		this._ne_electricCost = _ne_electricCost;
	}
	public Double get_ne_electricCost(){
		return this._ne_electricCost;
	}
	public void set_ne_otherCost(Double _ne_otherCost){
		this._ne_otherCost = _ne_otherCost;
	}
	public Double get_ne_otherCost(){
		return this._ne_otherCost;
	}
	public void set_ne_buildYear(Integer _ne_buildYear){
		this._ne_buildYear = _ne_buildYear;
	}
	public Integer get_ne_buildYear(){
		return this._ne_buildYear;
	}
	public void set_ne_minMonth(Integer _ne_minMonth){
		this._ne_minMonth = _ne_minMonth;
	}
	public Integer get_ne_minMonth(){
		return this._ne_minMonth;
	}
	public void set_ne_deposit(Double _ne_deposit){
		this._ne_deposit = _ne_deposit;
	}
	public Double get_ne_deposit(){
		return this._ne_deposit;
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
	public void set_se_imagePath(String _se_imagePath){
		this._se_imagePath = _se_imagePath;
	}
	public String get_se_imagePath(){
		return this._se_imagePath;
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
	public Short get_ne_examine() {
		return _ne_examine;
	}
	public void set_ne_examine(Short _ne_examine) {
		this._ne_examine = _ne_examine;
	}
}
