/*
商圈
*/
drop table if exists est_businessarea;
create table if not exists est_businessarea (
	area_id int not null auto_increment,
	area_name varchar(50) not null,
	district_id int not null,
	constraint PK_est_businessarea primary key(area_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*
楼盘
*/
drop table if exists est_palace;
create table if not exists est_palace(
	palace_id int not null auto_increment,
	palace_name varchar(80) not null,
	palace_address varchar(128) null,
	palace_desc text null,
	status tinyint not null,/* 1 enabled 0 disabled*/
	create_time datetime not null ,
	create_user_id int not null ,
	update_time datetime not null,
	update_user_id int not null,
	constraint PK_est_palace primary key(palace_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*
房产
自主交易：自己注册把房子放上去，并且显示自己的联系方式，后台可管理，审批。
委托交易：委托交易不一定要有帐户，可委托顾问放房子上去，不显示业主信息，
					有帐号的可以自己添加，选择委托交易，由后台决定委托人
					没帐号的委托经纪后台添加
*/
drop table if exists est_estate_out;
create table if not exists est_estate_out(
	estate_id int not null auto_increment,
	estate_card_no varchar(50),/*房产证编号*/
	card_5year tinyint,/*房产证是否满5年 1 是 0 否 固定参数yes_no*/
	estate_name varchar(80),/*房产名称*/
	develop varchar(50),
	
	trade_type tinyint not null,/* 1 自主交易 2 委托交易 固定参数trade_type*/
	contact_user_id int not null, /*联系人 自主交易时此值和create_user_id一样，委托交易时是委托人*/
	
	/*这里把省，市，区，商圈都记了，并且可null，方便扩展和将来可能的按市、区查询时减少table的链接*/
	province_id int,
	city_id int,
	district_id int,
	area_id int,
	address varchar(80),
	
	trade_mode tinyint not null,/*交易模式 0 disabled(前台不显示) 1 出租 2 出售 3 租售均可 4 已租 5 已售 固定参数out_trade_mode*/
	estate_type tinyint not null,/*类型 1 普通住宅 2 公寓 3 别墅 4 餐厅 5 商铺 6 写字楼 7 厂房 8 其他 固定参数estate_type*/
	
	area decimal(6,2) not null,/* 建筑面积 */
	is_lift tinyint not null, /* 1 电梯 0 非电梯 固定参数is_lift*/
	practical_area decimal(6,2) not null,	/* 实用面积 */
	
	effective int not null,/* 有效天数 -1 长期有效 */

	estate_address varchar(128) not null,
	toward int,	/* 房子的朝向 1 东 2 南 3 西 4 北 5 东南 6 西南 7 东北 8 西北 固定参数toward*/
	
	floor int not null, /* 楼层 */
	total_floor int not null, /* 总楼层 */
	
	sale_price decimal(14,2),/* 售价 出售必填 -1 面议 */
	rent_price decimal(14,2),/* 租价 出租价格 -1 面议 */

	hall int not null,/*厅*/
	bedroom int not null,/*房*/
	toilet int not null,/*卫*/
	porch int not null,/*阳*/
	
	manage_cost decimal(14,2) not null,/*管理费*/
	water_cost decimal(6,3) not null,/* 房子水费 按度计算 -1 为按地方政府规定 */
	electric_cost decimal(6,3),/* 房子电费 按度计算 -1 为按地方政府规定 */
	other_cost decimal(12,3),	/* 其他费用  按月计算 */

	build_year int,	/* 物业建筑年份 出售必填 程序控制 */
	
	min_month int,	/* 最短租期 出租必填 */
	deposit decimal(12,2), /*押金 出租必填 */	
	
	fitment tinyint not null,/* 装修程度 1 豪华装修 2 新装修 3 普通装修 4 简单装修 5 毛坯 6 其他 固定参数fitment*/
	device tinyint not null,/* 室内配套 1 吉屋 2 部分家电 3 家电齐 4 面议 固定参数device*/
	remark text,
	image_path varchar(80),

	create_time datetime not null,
	create_user_id int not null,
	update_time datetime not null,
	update_user_id int not null,
	constraint PK_est_estate_out primary key(estate_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*
	房产求售求租
*/
drop table if exists est_estate_in;
create table if not exists est_estate_in(
	estate_id int not null auto_increment,
	title varchar(80) not null,	/* 标题 */
	
	province_id int,
	city_id int,
	district_id int,
	area_id int,
	address varchar(80),

	trade_mode tinyint not null,/*交易模式 0 disabled(前台不显示) 1 求租 2 求售 3 租售均可 4 已租 5 已购 固定参数in_trade_mode*/
	estate_type tinyint not null,/*类型 1 普通住宅 2 公寓 3 别墅 4 餐厅 5 商铺 6 写字楼 7 厂房 8 其他 固定参数estate_type*/
	
	build_year int,	/* 物业建筑年份 出售必填 程序控制 */
	
	hall int not null,/*厅*/
	bedroom int not null,/*房*/
	toilet int not null,/*卫*/
	porch int not null,/*阳*/
								
	toward int,	/* 房子的朝向 1 东 2 南 3 西 4 北 5 东南 6 西南 7 东北 8 西北 固定参数toward*/
	
	buy_price_from decimal(14,2) null,/* 求售必填*/
	buy_price_to decimal(14,2) null,/* 求售必填*/
	
	rent_price_from decimal(14,2) null,/* 求租必填*/
	rent_price_to decimal(14,2) null,/* 求租必填*/
	
	area_from decimal(12,2) not null,	
	area_to decimal(12,2) not null,	
	is_lift tinyint not null, /* 1 电梯 0 非电梯 */

	fitment tinyint not null,/* 装修程度 0 均可 1 豪华装修 2 新装修 3 普通装修 4 简单装修 5 毛坯 固定参数fitment*/
	device tinyint not null,/* 室内配套 0 均可 1 吉屋 2 部分家电 3 家电齐 固定参数 固定参数device*/
	
	remark text ,
	
	create_time datetime not null ,	/* 记录创建日期 */
	create_user_id int not null ,	/* 记录创建人*/
	update_time datetime not null,
	update_user_id int not null,
	
	constraint PK_est_estate_in primary key(estate_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*
	新房
*/
drop table if exists est_new_estate;
create table if not exists est_new_estate(
	estate_id int not null auto_increment,
	estate_name varchar(80),/*房产名称*/
	develop varchar(50),
	
	/*这里把省，市，区，商圈都记了，并且可null，方便扩展和将来可能的按市、区查询时减少table的链接*/
	province_id int,
	city_id int,
	district_id int,
	area_id int,
	address varchar(80),
		
	status tinyint not null,/* 1 enabled 0 disabled 固定参数front_visible*/
	is_hot tinyint not null,/* 1 是 0 否 固定参数is_hot*/
	estate_type tinyint not null,/*类型 1 普通住宅 2 公寓 3 别墅 4 餐厅 5 商铺 6 写字楼 7 厂房 8 其他 固定参数estate_type*/
	
	area decimal(6,2) not null,/* 建筑面积 */
	is_lift tinyint not null, /* 1 电梯 0 非电梯 固定参数is_lift*/
	practical_area decimal(6,2) not null,	/* 实用面积 */
	
	effective int not null,/* 有效天数 -1 长期有效*/

	estate_address varchar(128) not null,
	toward int,	/* 房子的朝向 1 东 2 南 3 西 4 北 5 东南 6 西南 7 东北 8 西北 固定参数toward*/
	
	total_floor int not null, /* 总楼层 */
	
	price decimal(14,2),/* 售价 出售必填*/

	hall int not null,/*厅*/
	bedroom int not null,/*房*/
	toilet int not null,/*卫*/
	porch int not null,/*阳*/
	
	manage_cost decimal(14,2) not null,/*管理费*/
	other_cost decimal(12,3),	/* 其他费用  按月计算 */

	fitment tinyint not null,/* 装修程度 1 豪华装修 2 新装修 3 普通装修 4 简单装修 5 毛坯 6 其他 固定参数fitment*/
	remark text,
	image_path varchar(80),

	create_time datetime not null,
	create_user_id int not null,
	update_time datetime not null,
	update_user_id int not null,
	constraint PK_est_estate_out primary key(estate_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*
房产图片
*/
drop table if exists est_estate_image;
create table if not exists est_estate_image(
	type tinyint not null,/* 1 二手房 2 新房 固定参数est_image_type*/
	estate_id int not null,
	image_path varchar(100) not null,
	constraint PK_est_estate_image primary key(type,estate_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*
旺铺招租
*/
drop table if exists est_commerce;
create table if not exists est_commerce(
	commerce_id int not null auto_increment,
	title varchar(50) not null ,
	content text not null,
	province_id int,
	city_id int,
	district_id int,
	area_id int,
	commerce_type int not null,	/* 旺铺类型 固定参数commerce_type  1 - 厂房仓库 2 - 酒楼转让   3 - 写字楼4 - 餐厅转让 5 - 商铺6  - 工厂转让 7 - 美容发廊 8 - 房租转让 */
	status tinyint not null,/* 1 enabled 0 disabled 固定参数front_visible*/
	ip varchar(30) not null,
	create_time datetime not null,
	create_user_id int not null,
	update_time datetime not null,
	update_user_id int not null,
	constraint PK_est_commerce primary key(commerce_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*
房子留言
*/
drop table if exists est_comment;
create table if not exists est_comment(
	comment_id int not null,
	type int not null, /* 用固定参数 est_comment_type 1 出售出租 2 求售求租 3 新房 4 商业旺铺*/
	content text not null,
	ip varchar(30) not null,
	status tinyint not null, /* 1 前台可见 0 前台不可见 */
	create_time datetime not null,
	create_user_id int not null,
  update_time datetime not null,
	update_user_id int not null,
	constraint PK_est_comment primary key(comment_id,type)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


/*
经纪人信息

drop table if exists est_broker;
create table if not exists est_broker(
	user_id int not null,
	real_name varchar(20) not null,
	status tinyint not null ,	/* 状态 1 enabled 0 disabled 固定参数status
	
	province_id int,
	city_id int,
	district_id int,
	
	level varchar(20),
	
	company varchar(50),
	license varchar(30),
	image_path varchar(120) null,
	
	remark text ,
	hobby varchar(300), 爱好 
	glory varchar(300),个人荣誉
	
	constraint PK_est_broker primary key(user_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
*/