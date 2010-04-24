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
	status tinyint not null,/*status -1 enabled 0 disabled*/
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
	constraint PK_sys_user primary key(user_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*
系统参数
*/
drop table if exists sys_param;
CREATE TABLE if not exists sys_param(
	param_name varchar(20),
	param_value varchar(200),
	param_desc varchar(200),
	constraint PK_sys_param primary key(param_name)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;