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


