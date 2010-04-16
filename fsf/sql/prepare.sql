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