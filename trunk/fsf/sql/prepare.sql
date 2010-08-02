drop table if exists sys_dictgroup;
create table if not exists sys_dictgroup(
	group_name varchar(30) not null,
	group_desc varchar(50),
  remark varchar(200),
	constraint PK_sys_dictgroup primary key (group_name)
);
drop table if exists sys_dictitem;
create table if not exists sys_dictitem(
	group_name varchar(30) not null,
	item_key varchar(10) not null,
	item_name varchar(50) not null,
	item_desc varchar(50),
	seq int,
	constraint PK_sys_dictitem primary key (group_name,item_key)
);


/*************************固定参数****************************/

/*************************性别****************************/
insert into sys_dictgroup (group_name,group_desc,remark)
select 'sex','性别',null;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'sex','1','男','男',1 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'sex','2','女','女',2 ;

/*************************状态****************************/
insert into sys_dictgroup (group_name,group_desc,remark)
select 'status','状态',null;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'status','1','可用','可用',1 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'status','0','不可用','不可用',2 ;

/*************************用户类型****************************/
insert into sys_dictgroup (group_name,group_desc,remark)
select 'user_type','用户类型',null;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'user_type','0','超级管理员','超级管理员',0 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'user_type','1','管理员','管理员',1 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'user_type','2','顾问','顾问',2 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'user_type','3','普通用户','普通用户',3 ;

/*************************前台是否可见****************************/
insert into sys_dictgroup (group_name,group_desc,remark)
select 'front_visible','前台是否可见',null;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'front_visible','1','前台可见','前台可见',1 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'front_visible','0','不前台可见','不前台可见',2 ;

/*************************是否****************************/
insert into sys_dictgroup (group_name,group_desc,remark)
select 'yes_no','是否',null;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'yes_no','1','是','是',1 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'yes_no','0','否','否',2 ;


/*************************讯息类型****************************/
insert into sys_dictgroup (group_name,group_desc,remark)
select 'information_type','讯息类型',null;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'information_type','0','首页滚动','首页滚动',0 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'information_type','1','焦点','焦点',1 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'information_type','2','深度报道','深度报道',2 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'information_type','3','房价新闻','房价新闻',3 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'information_type','4','区域报道','区域报道',4 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'information_type','5','房产政策','房产政策',5 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'information_type','6','国际家居','国际家居',6 ;

/*************************商业旺铺类型****************************/
insert into sys_dictgroup (group_name,group_desc,remark)
select 'commerce_type','商业旺铺类型',null;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'commerce_type','1','厂房仓库','厂房仓库',1 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'commerce_type','2','酒楼转让','酒楼转让',2 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'commerce_type','3','写字楼','写字楼',3 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'commerce_type','4','餐厅转让','餐厅转让',4 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'commerce_type','5','商铺','商铺',5 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'commerce_type','6','工厂转让','工厂转让',6 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'commerce_type','7','美容发廊','美容发廊',7 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'commerce_type','8','房租转让','房租转让',7 ;


/*************************房产信息留言类型****************************/
insert into sys_dictgroup (group_name,group_desc,remark)
select 'est_comment_type','房产信息留言类型',null;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'est_comment_type','1','出售出租','出售出租',1 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'est_comment_type','2','求售求租','求售求租',2 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'est_comment_type','3','新房','新房',3 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'est_comment_type','4','商业旺铺','商业旺铺',4 ;

/*************************交易方式****************************/
insert into sys_dictgroup (group_name,group_desc,remark)
select 'trade_type','房产交易类型',null;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'trade_type','1','自主交易','自主交易',1 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'trade_type','2','委托交易','委托交易',2 ;


/*************************房产出租出售标识****************************/
insert into sys_dictgroup (group_name,group_desc,remark)
select 'out_trade_mode','房产出租出售标识',null;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'out_trade_mode','0','无效','无效',0 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'out_trade_mode','1','出租','出租',1 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'out_trade_mode','2','出售','出售',2 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'out_trade_mode','3','租售均可','租售均可',3 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'out_trade_mode','4','已租','已租',4 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'out_trade_mode','5','已售','已售',5 ;

/*************************房产类型****************************/
insert into sys_dictgroup (group_name,group_desc,remark)
select 'estate_type','房产类型',null;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'estate_type','1','普通住宅','普通住宅',1 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'estate_type','2','公寓','公寓',2 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'estate_type','3','别墅','别墅',3 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'estate_type','4','餐厅','餐厅',4 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'estate_type','5','商铺','商铺',5 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'estate_type','6','写字楼','写字楼',6 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'estate_type','7','厂房','厂房',7 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'estate_type','8','其他','其他',8 ;

/*************************房产类型****************************/
insert into sys_dictgroup (group_name,group_desc,remark)
select 'is_lift','是否电梯房',null;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'is_lift','1','电梯房','电梯房',1 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'is_lift','0','非电梯房','非电梯房',2 ;


/*************************朝向****************************/
insert into sys_dictgroup (group_name,group_desc,remark)
select 'toward','朝向',null;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'toward','0','均可','均可',0 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'toward','1','东','东',1 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'toward','2','南','南',2 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'toward','3','西','西',3 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'toward','4','北','北',4 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'toward','5','东南','东南',5 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'toward','6','西南','西南',6 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'toward','7','东北','东北',7 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'toward','8','西北','西北',8 ;

/*************************装修****************************/
insert into sys_dictgroup (group_name,group_desc,remark)
select 'fitment','装修',null;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'fitment','0',' 均可','均可',0 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'fitment','1',' 豪华装修','豪华装修',1 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'fitment','2','新装修','新装修',2 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'fitment','3','普通装修','普通装修',3 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'fitment','4','简单装修','简单装修',4 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'fitment','5','毛坯','毛坯',5 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'fitment','6','其他','其他',6 ;

/*************************家电****************************/
insert into sys_dictgroup (group_name,group_desc,remark)
select 'device','家电',null;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'device','0',' 均可','均可',0 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'device','1',' 吉屋','吉屋',1 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'device','2','部分家电','部分家电',2 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'device','3','家电齐','家电齐',3 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'device','4','面议','面议',4 ;

/*************************房产出租出售标识****************************/
insert into sys_dictgroup (group_name,group_desc,remark)
select 'in_trade_mode','房产出租出售标识',null;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'in_trade_mode','0','无效','无效',0 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'in_trade_mode','1','求租','求租',1 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'in_trade_mode','2','求售','求售',2 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'in_trade_mode','3','租售均可','租售均可',3 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'in_trade_mode','4','已租','已租',4 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'in_trade_mode','5','已购','已购',5 ;

/*************************房产类型****************************/
insert into sys_dictgroup (group_name,group_desc,remark)
select 'is_hot','是否热门',null;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'is_hot','1','热门','热门',1 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'is_hot','0','非热门','非热门',2 ;

/*************************审核状态****************************/
insert into sys_dictgroup (group_name,group_desc,remark)
select 'examine','审核状态',null;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'examine','1','审核通过','审核通过',1 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'examine','0','审核中','审核中',2 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'examine','-1','审核未通过','审核未通过',3 ;

/*************************顾问星级****************************/
insert into sys_dictgroup (group_name,group_desc,remark)
select 'expert_level','顾问星级',null;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'expert_level','1','一星级顾问','一星级顾问',1 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'expert_level','2','二星级顾问','二星级顾问',2 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'expert_level','3','三星级顾问','三星级顾问',3 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'expert_level','4','四星级顾问','四星级顾问',4 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'expert_level','5','五星级顾问','五星级顾问',5 ;

/*************************买卖房注意事项类型****************************/
insert into sys_dictgroup (group_name,group_desc,remark)
select 'attention_type','买卖房注意事项类型',null;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'attention_type','1','买房注意事项','买房注意事项',1 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'attention_type','2','卖房注意事项','卖房注意事项',2 ;

/*************************还款方式****************************/
insert into sys_dictgroup (group_name,group_desc,remark)
select 'repay_type','还款方式',null;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'repay_type','1','按月等额还款','按月等额还款',1 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'repay_type','2','按月递减还款','按月递减还款',2 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'repay_type','3','双周供','双周供',3 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'repay_type','4','气球贷','气球贷',4 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'repay_type','5','其它','其它',5 ;

/*************************贷款用途****************************/
insert into sys_dictgroup (group_name,group_desc,remark)
select 'loan_usage','贷款用途',null;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'loan_usage','1','购二手房','购二手房',1 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'loan_usage','2','非交易转按','非交易转按',2 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'loan_usage','3','加按','加按',3 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'loan_usage','4','赎楼','赎楼',4 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'loan_usage','5','其它','其它',5 ;

/*************************证件类型****************************/
insert into sys_dictgroup (group_name,group_desc,remark)
select 'paper_type','证件类型',null;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'paper_type','1','身份证','身份证',1 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'paper_type','2','护照','护照',2 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'paper_type','3','户口薄','户口薄',3 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'paper_type','4','回乡证','回乡证',4 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'paper_type','5','军人/武警/证','军人/武警/证',5 ;

/*************************房产性质****************************/
insert into sys_dictgroup (group_name,group_desc,remark)
select 'estate_property','房产性质',null;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'estate_property','1','住宅','住宅',1 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'estate_property','2','别墅','别墅',2 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'estate_property','3','公寓','公寓',3 ;
insert into sys_dictitem (group_name,item_key,item_name,item_desc,seq)
select 'estate_property','4','其它','其它',4 ;
