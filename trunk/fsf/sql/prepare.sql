drop table if exists sys_dictgroup;
create table if not exists sys_dictgroup(
	group_name varchar(30) not null,
	group_desc varchar(50),
  remark varchar(200),
	constraint PK_sys_dictgroup primary key (group_name)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
drop table if exists sys_dictitem;
create table if not exists sys_dictitem(
	group_name varchar(30) not null,
	item_key varchar(10) not null,
	item_name varchar(50) not null,
	item_desc varchar(50),
	seq int,
	constraint PK_sys_dictitem primary key (group_name,item_key)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


/*************************固定参数****************************/

/*************************性别****************************/
insert into sys_dictgroup (group_name,group_desc,remark)
select 'sex','性别',null from dual
where not exists (select * from sys_dictgroup where group_name = 'sex');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'sex','1','男','男',1 from dual
where not exists (select * from sys_dictitem where group_name = 'sex' and item_key = '1');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'sex','2','女','女',2 from dual
where not exists (select * from sys_dictitem where group_name = 'sex' and item_key = '2');

/*************************状态****************************/
insert into sys_dictgroup (group_name,group_desc,remark)
select 'status','状态',null from dual
where not exists (select * from sys_dictgroup where group_name = 'status');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'status','1','可用','可用',1 from dual
where not exists (select * from sys_dictitem where group_name = 'status' and item_key = '1');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'status','0','不可用','不可用',2 from dual
where not exists (select * from sys_dictitem where group_name = 'status' and item_key = '0');

/*************************用户类型****************************/
insert into sys_dictgroup (group_name,group_desc,remark)
select 'user_type','用户类型',null from dual
where not exists (select * from sys_dictgroup where group_name = 'user_type');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'user_type','0','超级管理员','超级管理员',0 from dual
where not exists (select * from sys_dictitem where group_name = 'user_type' and item_key = '0');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'user_type','1','管理员','管理员',1 from dual
where not exists (select * from sys_dictitem where group_name = 'user_type' and item_key = '1');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'user_type','2','顾问','顾问',2 from dual
where not exists (select * from sys_dictitem where group_name = 'user_type' and item_key = '2');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'user_type','3','普通用户','普通用户',3 from dual
where not exists (select * from sys_dictitem where group_name = 'user_type' and item_key = '3');

/*************************前台是否可见****************************/
insert into sys_dictgroup (group_name,group_desc,remark)
select 'front_visible','前台是否可见',null from dual
where not exists (select * from sys_dictgroup where group_name = 'front_visible');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'front_visible','1','前台可见','前台可见',1 from dual
where not exists (select * from sys_dictitem where group_name = 'front_visible' and item_key = '1');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'front_visible','0','不前台可见','不前台可见',2 from dual
where not exists (select * from sys_dictitem where group_name = 'front_visible' and item_key = '0');

/*************************是否****************************/
insert into sys_dictgroup (group_name,group_desc,remark)
select 'yes_no','是否',null from dual
where not exists (select * from sys_dictgroup where group_name = 'yes_no');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'yes_no','1','是','是',1 from dual
where not exists (select * from sys_dictitem where group_name = 'yes_no' and item_key = '1');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'yes_no','0','否','否',2 from dual
where not exists (select * from sys_dictitem where group_name = 'yes_no' and item_key = '0');

/*************************讯息类型****************************/
insert into sys_dictgroup (group_name,group_desc,remark)
select 'information_type','讯息类型',null from dual
where not exists (select * from sys_dictgroup where group_name = 'information_type');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'information_type','1','焦点','焦点',1 from dual
where not exists (select * from sys_dictitem where group_name = 'information_type' and item_key = '1');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'information_type','2','深度报道','深度报道',2 from dual
where not exists (select * from sys_dictitem where group_name = 'information_type' and item_key = '2');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'information_type','3','房价新闻','房价新闻',2 from dual
where not exists (select * from sys_dictitem where group_name = 'information_type' and item_key = '3');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'information_type','4','区域报道','区域报道',2 from dual
where not exists (select * from sys_dictitem where group_name = 'information_type' and item_key = '4');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'information_type','5','房产政策','房产政策',2 from dual
where not exists (select * from sys_dictitem where group_name = 'information_type' and item_key = '5');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'information_type','6','国际家居','国际家居',2 from dual
where not exists (select * from sys_dictitem where group_name = 'information_type' and item_key = '6');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'information_type','7','社区推荐','社区推荐',2 from dual
where not exists (select * from sys_dictitem where group_name = 'information_type' and item_key = '7');


/*************************讯息类型****************************/
insert into sys_dictgroup (group_name,group_desc,remark)
select 'information_type','讯息类型',null from dual
where not exists (select * from sys_dictgroup where group_name = 'information_type');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'information_type','1','焦点','焦点',1 from dual
where not exists (select * from sys_dictitem where group_name = 'information_type' and item_key = '1');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'information_type','2','深度报道','深度报道',2 from dual
where not exists (select * from sys_dictitem where group_name = 'information_type' and item_key = '2');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'information_type','3','房价新闻','房价新闻',3 from dual
where not exists (select * from sys_dictitem where group_name = 'information_type' and item_key = '3');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'information_type','4','区域报道','区域报道',4 from dual
where not exists (select * from sys_dictitem where group_name = 'information_type' and item_key = '4');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'information_type','5','房产政策','房产政策',5 from dual
where not exists (select * from sys_dictitem where group_name = 'information_type' and item_key = '5');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'information_type','6','国际家居','国际家居',6 from dual
where not exists (select * from sys_dictitem where group_name = 'information_type' and item_key = '6');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'information_type','7','社区推荐','社区推荐',7 from dual
where not exists (select * from sys_dictitem where group_name = 'information_type' and item_key = '7');

/*************************商业旺铺类型****************************/
insert into sys_dictgroup (group_name,group_desc,remark)
select 'commerce_type','商业旺铺类型',null from dual
where not exists (select * from sys_dictgroup where group_name = 'commerce_type');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'commerce_type','1','厂房仓库','厂房仓库',1 from dual
where not exists (select * from sys_dictitem where group_name = 'commerce_type' and item_key = '1');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'commerce_type','2','酒楼转让','酒楼转让',2 from dual
where not exists (select * from sys_dictitem where group_name = 'commerce_type' and item_key = '2');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'commerce_type','3','写字楼','写字楼',3 from dual
where not exists (select * from sys_dictitem where group_name = 'commerce_type' and item_key = '3');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'commerce_type','4','餐厅转让','餐厅转让',4 from dual
where not exists (select * from sys_dictitem where group_name = 'commerce_type' and item_key = '4');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'commerce_type','5','商铺','商铺',5 from dual
where not exists (select * from sys_dictitem where group_name = 'commerce_type' and item_key = '5');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'commerce_type','6','工厂转让','工厂转让',6 from dual
where not exists (select * from sys_dictitem where group_name = 'commerce_type' and item_key = '6');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'commerce_type','7','美容发廊','美容发廊',7 from dual
where not exists (select * from sys_dictitem where group_name = 'commerce_type' and item_key = '7');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'commerce_type','8','房租转让','房租转让',7 from dual
where not exists (select * from sys_dictitem where group_name = 'commerce_type' and item_key = '8');


/*************************房产信息留言类型****************************/
insert into sys_dictgroup (group_name,group_desc,remark)
select 'est_comment_type','房产信息留言类型',null from dual
where not exists (select * from sys_dictgroup where group_name = 'est_comment_type');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'est_comment_type','1','出售出租','出售出租',1 from dual
where not exists (select * from sys_dictitem where group_name = 'est_comment_type' and item_key = '1');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'est_comment_type','2','求售求租','求售求租',2 from dual
where not exists (select * from sys_dictitem where group_name = 'est_comment_type' and item_key = '2');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'est_comment_type','3','新房','新房',3 from dual
where not exists (select * from sys_dictitem where group_name = 'est_comment_type' and item_key = '3');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'est_comment_type','4','商业旺铺','商业旺铺',4 from dual
where not exists (select * from sys_dictitem where group_name = 'est_comment_type' and item_key = '4');

/*************************交易方式****************************/
insert into sys_dictgroup (group_name,group_desc,remark)
select 'trade_type','房产信息留言类型',null from dual
where not exists (select * from sys_dictgroup where group_name = 'trade_type');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'trade_type','1','自主交易','自主交易',1 from dual
where not exists (select * from sys_dictitem where group_name = 'trade_type' and item_key = '1');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'trade_type','2','委托交易','委托交易',2 from dual
where not exists (select * from sys_dictitem where group_name = 'trade_type' and item_key = '2');


/*************************房产出租出售标识****************************/
insert into sys_dictgroup (group_name,group_desc,remark)
select 'out_trade_mode','房产出租出售标识',null from dual
where not exists (select * from sys_dictgroup where group_name = 'out_trade_mode');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'out_trade_mode','0','无效','无效',0 from dual
where not exists (select * from sys_dictitem where group_name = 'out_trade_mode' and item_key = '0');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'out_trade_mode','1','出租','出租',1 from dual
where not exists (select * from sys_dictitem where group_name = 'out_trade_mode' and item_key = '1');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'out_trade_mode','2','出售','出售',2 from dual
where not exists (select * from sys_dictitem where group_name = 'out_trade_mode' and item_key = '2');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'out_trade_mode','3','租售均可','租售均可',3 from dual
where not exists (select * from sys_dictitem where group_name = 'out_trade_mode' and item_key = '3');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'out_trade_mode','4','已租','已租',4 from dual
where not exists (select * from sys_dictitem where group_name = 'out_trade_mode' and item_key = '4');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'out_trade_mode','5','已售','已售',5 from dual
where not exists (select * from sys_dictitem where group_name = 'out_trade_mode' and item_key = '5');

/*************************房产类型****************************/
insert into sys_dictgroup (group_name,group_desc,remark)
select 'estate_type','房产类型',null from dual
where not exists (select * from sys_dictgroup where group_name = 'estate_type');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'estate_type','1','普通住宅','普通住宅',1 from dual
where not exists (select * from sys_dictitem where group_name = 'estate_type' and item_key = '1');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'estate_type','2','公寓','公寓',2 from dual
where not exists (select * from sys_dictitem where group_name = 'estate_type' and item_key = '2');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'estate_type','3','别墅','别墅',3 from dual
where not exists (select * from sys_dictitem where group_name = 'estate_type' and item_key = '3');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'estate_type','4','餐厅','餐厅',4 from dual
where not exists (select * from sys_dictitem where group_name = 'estate_type' and item_key = '4');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'estate_type','5','商铺','商铺',5 from dual
where not exists (select * from sys_dictitem where group_name = 'estate_type' and item_key = '5');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'estate_type','6','写字楼','写字楼',6 from dual
where not exists (select * from sys_dictitem where group_name = 'estate_type' and item_key = '6');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'estate_type','7','厂房','厂房',7 from dual
where not exists (select * from sys_dictitem where group_name = 'estate_type' and item_key = '7');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'estate_type','8','其他','其他',8 from dual
where not exists (select * from sys_dictitem where group_name = 'estate_type' and item_key = '8');

/*************************房产类型****************************/
insert into sys_dictgroup (group_name,group_desc,remark)
select 'is_lift','是否电梯房',null from dual
where not exists (select * from sys_dictgroup where group_name = 'is_lift');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'is_lift','1','电梯房','电梯房',1 from dual
where not exists (select * from sys_dictitem where group_name = 'is_lift' and item_key = '1');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'is_lift','0','非电梯房','非电梯房',2 from dual
where not exists (select * from sys_dictitem where group_name = 'is_lift' and item_key = '0');


/*************************朝向****************************/
insert into sys_dictgroup (group_name,group_desc,remark)
select 'toward','朝向',null from dual
where not exists (select * from sys_dictgroup where group_name = 'toward');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'toward','0','均可','均可',0 from dual
where not exists (select * from sys_dictitem where group_name = 'toward' and item_key = '0');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'toward','1','东','东',1 from dual
where not exists (select * from sys_dictitem where group_name = 'toward' and item_key = '1');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'toward','2','南','南',2 from dual
where not exists (select * from sys_dictitem where group_name = 'toward' and item_key = '2');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'toward','3','西','西',3 from dual
where not exists (select * from sys_dictitem where group_name = 'toward' and item_key = '3');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'toward','4','北','北',4 from dual
where not exists (select * from sys_dictitem where group_name = 'toward' and item_key = '4');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'toward','5','东南','东南',5 from dual
where not exists (select * from sys_dictitem where group_name = 'toward' and item_key = '5');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'toward','6','西南','西南',6 from dual
where not exists (select * from sys_dictitem where group_name = 'toward' and item_key = '6');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'toward','7','东北','东北',7 from dual
where not exists (select * from sys_dictitem where group_name = 'toward' and item_key = '7');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'toward','8','西北','西北',8 from dual
where not exists (select * from sys_dictitem where group_name = 'toward' and item_key = '8');

/*************************装修****************************/
insert into sys_dictgroup (group_name,group_desc,remark)
select 'fitment','装修',null from dual
where not exists (select * from sys_dictgroup where group_name = 'fitment');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'fitment','0',' 均可','均可',0 from dual
where not exists (select * from sys_dictitem where group_name = 'fitment' and item_key = '0');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'fitment','1',' 豪华装修','豪华装修',1 from dual
where not exists (select * from sys_dictitem where group_name = 'fitment' and item_key = '1');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'fitment','2','新装修','新装修',2 from dual
where not exists (select * from sys_dictitem where group_name = 'fitment' and item_key = '2');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'fitment','3','普通装修','普通装修',3 from dual
where not exists (select * from sys_dictitem where group_name = 'fitment' and item_key = '3');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'fitment','4','简单装修','简单装修',4 from dual
where not exists (select * from sys_dictitem where group_name = 'fitment' and item_key = '4');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'fitment','5','毛坯','毛坯',5 from dual
where not exists (select * from sys_dictitem where group_name = 'fitment' and item_key = '5');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'fitment','6','其他','其他',6 from dual
where not exists (select * from sys_dictitem where group_name = 'fitment' and item_key = '6');

/*************************家电****************************/
insert into sys_dictgroup (group_name,group_desc,remark)
select 'device','家电',null from dual
where not exists (select * from sys_dictgroup where group_name = 'device');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'device','0',' 均可','均可',0 from dual
where not exists (select * from sys_dictitem where group_name = 'device' and item_key = '0');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'device','1',' 吉屋','吉屋',1 from dual
where not exists (select * from sys_dictitem where group_name = 'device' and item_key = '1');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'device','2','部分家电','部分家电',2 from dual
where not exists (select * from sys_dictitem where group_name = 'device' and item_key = '2');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'device','3','家电齐','家电齐',3 from dual
where not exists (select * from sys_dictitem where group_name = 'device' and item_key = '3');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'device','4','面议','面议',4 from dual
where not exists (select * from sys_dictitem where group_name = 'device' and item_key = '4');

/*************************房产出租出售标识****************************/
insert into sys_dictgroup (group_name,group_desc,remark)
select 'in_trade_mode','房产出租出售标识',null from dual
where not exists (select * from sys_dictgroup where group_name = 'in_trade_mode');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'in_trade_mode','0','无效','无效',0 from dual
where not exists (select * from sys_dictitem where group_name = 'in_trade_mode' and item_key = '0');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'in_trade_mode','1','求租','求租',1 from dual
where not exists (select * from sys_dictitem where group_name = 'in_trade_mode' and item_key = '1');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'in_trade_mode','2','求售','求售',2 from dual
where not exists (select * from sys_dictitem where group_name = 'in_trade_mode' and item_key = '2');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'in_trade_mode','3','租售均可','租售均可',3 from dual
where not exists (select * from sys_dictitem where group_name = 'in_trade_mode' and item_key = '3');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'in_trade_mode','4','已租','已租',4 from dual
where not exists (select * from sys_dictitem where group_name = 'in_trade_mode' and item_key = '4');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'in_trade_mode','5','已购','已购',5 from dual
where not exists (select * from sys_dictitem where group_name = 'in_trade_mode' and item_key = '5');

/*************************房产类型****************************/
insert into sys_dictgroup (group_name,group_desc,remark)
select 'is_hot','是否热门',null from dual
where not exists (select * from sys_dictgroup where group_name = 'is_hot');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'is_hot','1','热门','热门',1 from dual
where not exists (select * from sys_dictitem where group_name = 'is_hot' and item_key = '1');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'is_hot','0','非热门','非热门',2 from dual
where not exists (select * from sys_dictitem where group_name = 'is_hot' and item_key = '0');

/*************************审核状态****************************/
insert into sys_dictgroup (group_name,group_desc,remark)
select 'examine','审核状态',null from dual
where not exists (select * from sys_dictgroup where group_name = 'examine');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'examine','1','审核通过','审核通过',1 from dual
where not exists (select * from sys_dictitem where group_name = 'examine' and item_key = '1');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'examine','0','审核中','审核中',2 from dual
where not exists (select * from sys_dictitem where group_name = 'examine' and item_key = '0');
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'examine','-1','审核未通过','审核未通过',3 from dual
where not exists (select * from sys_dictitem where group_name = 'examine' and item_key = '-1');