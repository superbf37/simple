create database  mybatis;
use mybatis;

CREATE TABLE `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `countryname` varchar(255) DEFAULT NULL COMMENT '国家名称',
  `countrycode` varchar(255) DEFAULT NULL COMMENT '国家编码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='国家';

create table sys_user (
  id bigint not null auto_increment comment '用户id',
  user_name varchar(50) comment '用户名',
  user_password varchar(50) comment '密码',
  user_email varchar(50) comment '用户邮箱',
  user_info text comment '简介',
  head_img blob comment '头像二进制文件',
  create_time datetime comment '创建时间',
  primary key(id) comment'用户表'
);

create table sys_role (
  id bigint not null auto_increment comment '角色id',
  role_name varchar(50) comment '角色名',
  enabled varchar(50) comment '有效标识',
  create_by varchar(50) comment '创建人',
  create_time datetime comment '创建时间',
  primary key(id) comment'角色表'
);

create table sys_privilege (
  id bigint not null auto_increment comment '权限id',
  privilege_name varchar(50) comment '权限名称',
  privilege_url varchar(50) comment '权限URL',
  primary key(id) comment'权限表'
);

create table sys_user_role(
  user_id bigint comment '用户ID',
  role_id bigint comment '角色ID'
);

alter table sys_user_role comment '用户角色表';

create table sys_role_privilege(
  role_id bigint comment '角色ID',
  privilege bigint comment '权限ID'
);
alter table sys_role_privilege comment '角色权限表';


insert into `sys_user` values ('1','admin','123456','admin@mybatis.tk','管理员',null,'2018-11-27 15:59:23');
insert into `sys_user` values ('1001','test','123456','test@mybatis.tk','测试用户',null,'2018-11-27 15:59:23');

insert into `sys_role` values ('1','管理员','1','1','2018-11-27 15:59:23');
insert into `sys_role` values ('2','普通用户','1','1','2018-11-27 15:59:23');

insert into `sys_user_role` values('1','1');
insert into `sys_user_role` values('1','2');
insert into `sys_user_role` values('1001','2');

insert into `sys_privilege` values('1','用户管理','/users');
insert into `sys_privilege` values('2','角色管理','/roles');
insert into `sys_privilege` values('3','系统日志','/logs');
insert into `sys_privilege` values('4','人员维护','/persons');
insert into `sys_privilege` values('5','单位维护','/conpanies');


insert into `sys_role_privilege` values('1','1');
insert into `sys_role_privilege` values('1','3');
insert into `sys_role_privilege` values('1','2');
insert into `sys_role_privilege` values('2','4');
insert into `sys_role_privilege` values('2','5');