drop table if exists system_user;
create table system_user
(
id int,
name varchar(20),
password varchar(20),
constraint PK_system_user primary key(id)
);