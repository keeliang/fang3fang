
/*
资讯
*/
drop table if exists  info_information;
create table if not exists info_information(
	information_id int not null auto_increment,
	information_title varchar(80) not null,
	information_content text not null,
	is_new tinyint not null,
	/* 1 是,information_type由info_new_type取值  0 否,information_type由固定参数 1 焦点 2 深度报道 3 房价新闻 4 区域报道 5 房产政策 6 国际家居 7 社区推荐*/
	information_type int not null,
	status tinyint not null ,	/* 状态 1 enabled 0 disabled */
	create_time datetime not null ,
	create_user_id int not null ,
	modify_time datetime not null ,
	modify_user_id int not null ,
	constraint PK_info_information primary key(information_id)
);

/*
新闻类型
*/
drop table if exists  info_new_type;
create table if not exists info_new_type(
	new_type_id int not null auto_increment,
	title varchar(20) not null ,	/* 新闻类型名称 */
	seq int not null,
	status tinyint not null ,	/* 1 enabled 0 disabled */
	create_time datetime not null ,
	create_user_id int not null ,
	modify_time datetime not null ,
	modify_user_id int not null ,
	constraint PK_info_new_type primary key(new_type_id)
);

/*
资讯留言
*/
drop table if exists info_comment;
create table if not exists info_comment(
	comment_id int not null,
	content text not null,
	information_id int not null,
	ip varchar(30) not null,
	status tinyint not null, /* 1 前台可见 0 前台不可见 */
	create_time datetime not null,
	create_user_id int not null,
  update_time datetime not null,
	update_user_id int not null,
	constraint PK_info_comment primary key(comment_id)
);