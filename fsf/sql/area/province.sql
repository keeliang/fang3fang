drop table if exists sys_province;
CREATE TABLE if not exists sys_province(
	province_id int auto_increment NOT NULL ,
	province_name varchar(50) not null,
	constraint PK_sys_province primary key (province_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT sys_province (province_id, province_name) VALUES (1, '北京市');
INSERT sys_province (province_id, province_name) VALUES (2, '天津市');
INSERT sys_province (province_id, province_name) VALUES (3, '河北省');
INSERT sys_province (province_id, province_name) VALUES (4, '山西省');
INSERT sys_province (province_id, province_name) VALUES (5, '内蒙古自治区');
INSERT sys_province (province_id, province_name) VALUES (6, '辽宁省');
INSERT sys_province (province_id, province_name) VALUES (7, '吉林省');
INSERT sys_province (province_id, province_name) VALUES (8, '黑龙江省');
INSERT sys_province (province_id, province_name) VALUES (9, '上海市');
INSERT sys_province (province_id, province_name) VALUES (10, '江苏省');
INSERT sys_province (province_id, province_name) VALUES (11, '浙江省');
INSERT sys_province (province_id, province_name) VALUES (12, '安徽省');
INSERT sys_province (province_id, province_name) VALUES (13, '福建省');
INSERT sys_province (province_id, province_name) VALUES (14, '江西省');
INSERT sys_province (province_id, province_name) VALUES (15, '山东省');
INSERT sys_province (province_id, province_name) VALUES (16, '河南省');
INSERT sys_province (province_id, province_name) VALUES (17, '湖北省');
INSERT sys_province (province_id, province_name) VALUES (18, '湖南省');
INSERT sys_province (province_id, province_name) VALUES (19, '广东省');
INSERT sys_province (province_id, province_name) VALUES (20, '广西壮族自治区');
INSERT sys_province (province_id, province_name) VALUES (21, '海南省');
INSERT sys_province (province_id, province_name) VALUES (22, '重庆市');
INSERT sys_province (province_id, province_name) VALUES (23, '四川省');
INSERT sys_province (province_id, province_name) VALUES (24, '贵州省');
INSERT sys_province (province_id, province_name) VALUES (25, '云南省');
INSERT sys_province (province_id, province_name) VALUES (26, '西藏自治区');
INSERT sys_province (province_id, province_name) VALUES (27, '陕西省');
INSERT sys_province (province_id, province_name) VALUES (28, '甘肃省');
INSERT sys_province (province_id, province_name) VALUES (29, '青海省');
INSERT sys_province (province_id, province_name) VALUES (30, '宁夏回族自治区');
INSERT sys_province (province_id, province_name) VALUES (31, '新疆维吾尔自治区');
INSERT sys_province (province_id, province_name) VALUES (32, '香港特别行政区');
INSERT sys_province (province_id, province_name) VALUES (33, '澳门特别行政区');
INSERT sys_province (province_id, province_name) VALUES (34, '台湾省');
