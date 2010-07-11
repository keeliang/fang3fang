/*
用户
*/
drop table if exists sys_user;
CREATE TABLE if not exists sys_user(
	user_id int not null auto_increment,
	user_code varchar(50) unique not null,
	password varchar(50) not null,
	question varchar(30),
	answer varchar(30),

	user_name varchar(50),
	sex tinyint,/* 1 男 2 女 */
	status tinyint not null,/*status 1 enabled 0 disabled*/
	user_type tinyint not null,/*0 超级管理员 1 管理员 2 顾问 3 普通会员*/
	
	province_id int,
	city_id int,
	district_id int,
	address varchar(200),
	
	tel varchar(20),
	phone varchar(32),
	qq varchar(20),
	msn varchar(20),
	email varchar(80),
	
	remark text,
	create_date datetime not null,
	
	image_path varchar(100),

	/* 以下是顾问属性 */
	real_name varchar(20) null,
	
	work_province_id int,
	work_city_id int,
	work_district_id int,
	
	company varchar(50),

	level varchar(20),
	
	license varchar(30),

	hobby varchar(200),/* 爱好 */ 
	glory varchar(200),/* 个人荣誉 */
	
	constraint PK_sys_user primary key(user_id)
);

/*
系统参数
*/
drop table if exists sys_page_info;
CREATE TABLE if not exists sys_page_info(
	info_name varchar(20) not null,
	info_desc varchar(50),
	title varchar(100),
	content text,
	seq tinyint,
	constraint PK_sys_param primary key(info_name)
);

insert into sys_page_info(info_name,info_desc,title,content,seq) values('FindHouse','查找房源',null,null,1);
insert into sys_page_info(info_name,info_desc,title,content,seq) values('Contact','联络洽谈',null,null,2);
insert into sys_page_info(info_name,info_desc,title,content,seq) values('ContractSale','合同签署',null,null,3);
insert into sys_page_info(info_name,info_desc,title,content,seq) values('MoneyManagerSale','资金监管',null,null,4);
insert into sys_page_info(info_name,info_desc,title,content,seq) values('Mortgage','按揭贷款',null,null,5);
insert into sys_page_info(info_name,info_desc,title,content,seq) values('TransferSale','过户抵押',null,null,6);

insert into sys_page_info(info_name,info_desc,title,content,seq) values('ReleaseHouse','发布房源',null,null,7);
insert into sys_page_info(info_name,info_desc,title,content,seq) values('Communicate','沟通平台',null,null,8);
insert into sys_page_info(info_name,info_desc,title,content,seq) values('ContractBuy','合同签署',null,null,9);
insert into sys_page_info(info_name,info_desc,title,content,seq) values('MoneyManagerBuy','资金监管',null,null,10);
insert into sys_page_info(info_name,info_desc,title,content,seq) values('Guarantee','担保赎楼',null,null,11);
insert into sys_page_info(info_name,info_desc,title,content,seq) values('TransferBuy','过户抵押',null,null,12);

insert into sys_page_info(info_name,info_desc,title,content,seq) values('FreeService','免费服务',null,null,13);
insert into sys_page_info(info_name,info_desc,title,content,seq) values('ChargeService','收费服务',null,null,14);

insert into sys_page_info(info_name,info_desc,title,content,seq) values('ChooseFSF','为什么要选择房上房',null,null,15);
insert into sys_page_info(info_name,info_desc,title,content,seq) values('HowRelease','如何发布商业招商、旺铺转让',null,null,16);
insert into sys_page_info(info_name,info_desc,title,content,seq) values('MattersNeedAttention','二手房交易注意事项',null,null,17);

insert into sys_page_info(info_name,info_desc,title,content,seq) values('Bank','银行合作',null,null,18);

insert into sys_page_info(info_name,info_desc,title,content,seq) values('Disclaimer','免责声明',null,null,19);
insert into sys_page_info(info_name,info_desc,title,content,seq) values('Recruitment','人才招聘',null,null,20);


/*
系统配置表
*/
drop table if exists sys_config;
create table if not exists sys_config (
	id int not null auto_increment,
	item varchar(50) not null,
	value varchar(200) not null,
	item_desc varchar(255) null,
	constraint PK_est_businessarea primary key(id)
);
/*
	买卖房注意事项
*/
drop table if exists sys_attention;
CREATE TABLE if not exists sys_attention(
	attention_id int not null auto_increment,
	type tinyint not null,
	status tinyint not null,
	title varchar(100),
	content text,
	create_time datetime,
	constraint PK_sys_attention primary key(attention_id)
);