
/*
资讯
*/
drop table if exists  info_information;
create table if not exists info_information(
	information_id int not null auto_increment,
	information_title varchar(80) not null,
	information_content text not null,
	/* 由固定参数information_type取值 1 焦点 2 深度报道 3 房价新闻 4 区域报道 5 房产政策 6 国际家居 7 社区推荐*/
	information_type int not null,
	status tinyint not null ,	/* 状态 1 enabled 0 disabled */
	create_time datetime not null ,
	create_user_id int not null ,
	update_time datetime not null ,
	update_user_id int not null ,
	constraint PK_info_information primary key(information_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*
资讯留言
*/
drop table if exists info_info_comment;
create table if not exists info_info_comment(
	comment_id int not null,
	content text not null,
	information_id int not null,
	ip varchar(30) not null,
	status tinyint not null, /* 1 前台可见 0 前台不可见 用固定参数front_visible*/
	create_time datetime not null,
	create_user_id int not null,
  update_time datetime not null,
	update_user_id int not null,
	constraint PK_info_info_comment primary key(comment_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*
新闻
*/
drop table if exists  info_news;
create table if not exists info_news(
	news_id int not null auto_increment,
	information_title varchar(80) not null,
	information_content text not null,
	information_type int not null,
	status tinyint not null ,	/* 状态 1 enabled 0 disabled */
	create_time datetime not null ,
	create_user_id int not null ,
	update_time datetime not null ,
	update_user_id int not null ,
	constraint PK_info_news primary key(news_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*
新闻类型
*/
drop table if exists  info_news_type;
create table if not exists info_news_type(
	news_type_id int not null auto_increment,
	title varchar(20) not null ,	/* 新闻类型名称 */
	seq int not null,
	status tinyint not null ,	/* 1 enabled 0 disabled */
	create_time datetime not null ,
	create_user_id int not null ,
	update_time datetime not null ,
	update_user_id int not null ,
	constraint PK_info_news_type primary key(news_type_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*
新闻留言
*/
drop table if exists info_news_comment;
create table if not exists info_news_comment(
	comment_id int not null,
	content text not null,
	information_id int not null,
	ip varchar(30) not null,
	status tinyint not null, /* 1 前台可见 0 前台不可见 用固定参数front_visible*/
	create_time datetime not null,
	create_user_id int not null,
  update_time datetime not null,
	update_user_id int not null,
	constraint PK_info_news_comment primary key(comment_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;