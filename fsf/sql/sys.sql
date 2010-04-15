drop table if exists sys_user;
/*
	user_code ��½��
	user_name �س�
	user_type 0 ��������Ա 1 ����Ա 2 ���� 3 ��ͨ��Ա
	status -0 enabled 1 disabled
*/
CREATE TABLE if not exists sys_user(
	user_id int(11) not null auto_increment,
	user_code varchar(50) unique not null,
	password varchar(50) not null,
	user_name varchar(50),
	status tinyint not null,
	user_type tinyint not null,
	province_id int,
	city_id int,
	region_id int,
	address varchar(200),
	tel varchar(20),
	email varchar(80),
	create_date datetime not null,
	image_path varchar(100),
	constraint PK_sys_user primary key(
		user_id
	)
);