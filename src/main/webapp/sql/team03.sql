#CREATE DATABASE team03;

USE team03;
drop table if exists test01;
drop table if exists yj_staff;
drop table if exists yj_department;
drop table if exists yj_role;
drop table if exists yj_permission;
drop table if exists yj_menu;
drop table if exists yj_submenu;
drop table if exists department_permission;
drop table if exists staff_permission;
drop table if exists permission_submenu;
drop table if exists yj_task;

#测试表
CREATE TABLE test01(
  id INT PRIMARY KEY,
  name VARCHAR(32),
  password VARCHAR(64),
  state INT
);
INSERT  INTO test01 VALUES (1,'a1','11',1);
INSERT  INTO test01 VALUES (2,'a2','22',2);
INSERT  INTO test01 VALUES (3,'a3','33',3);
INSERT  INTO test01 VALUES (4,'a4','44',4);
INSERT  INTO test01 VALUES (5,'a5','55',5);
# SELECT * FROM yj_staff;

#员工信息表
CREATE TABLE yj_staff(
  staff_id INT PRIMARY KEY,
  staff_name VARCHAR(32) NOT NULL,
  staff_email VARCHAR(64),
  staff_username VARCHAR(32) NOT NULL,
  staff_pwd VARCHAR(64) NOT NULL,
  staff_dep_id INT
);
INSERT  INTO yj_staff VALUES (10001,'孙袖航','619676988@qq.com','sxh','1',20001);
INSERT  INTO yj_staff VALUES (10002,'井熙铎','1248334638@qq.com','jxd','1',20001);
INSERT  INTO yj_staff VALUES (10003,'郝旭东','1585651756@qq.com','hxd','1',20001);
INSERT  INTO yj_staff VALUES (10004,'肖玲玲','514847600@qq.com','xll','1',20001);
# SELECT * FROM yj_staff;

#部门表
CREATE TABLE yj_department(
  dep_id INT PRIMARY KEY,
  dep_name VARCHAR(32) NOT NULL,
  chief_id INT
);
INSERT  INTO yj_department VALUES (20001,'第一部门',20003);
INSERT  INTO yj_department VALUES (20002,'第二部门',20003);
INSERT  INTO yj_department VALUES (20003,'第三部门',88888);
# SELECT * FROM yj_department;

#角色表
CREATE TABLE yj_role(
  role_id INT PRIMARY KEY,
  role_name VARCHAR(32) NOT NULL
);
# SELECT * FROM yj_role;

#权限表
CREATE TABLE yj_permission(
  permission_id INT PRIMARY KEY,
  permission_name VARCHAR(32) NOT NULL
);
# SELECT * FROM yj_permission;

#菜单表
CREATE TABLE yj_menu(
  role_id INT PRIMARY KEY,
  role_name VARCHAR(32) NOT NULL
);
# SELECT * FROM yj_menu;

#子菜单表
CREATE TABLE yj_submenu(
  submenu_id INT PRIMARY KEY,
  submenu_name VARCHAR(32) NOT NULL,
  menu_id INT NOT NULL,
  path VARCHAR(64) NOT NULL
);
# SELECT * FROM yj_submenu;

#部门权限表
CREATE TABLE department_permission(
  id INT PRIMARY KEY,
  dep_id INT NOT NULL,
  permission_id INT NOT NULL
);
# SELECT * FROM department_permission;

#用户权限表
CREATE TABLE staff_permission(
  id INT PRIMARY KEY,
  staff_id INT NOT NULL,
  permission_id INT NOT NULL
);
# SELECT * FROM staff_permission;

#权限子菜单表
CREATE TABLE permission_submenu(
  id INT PRIMARY KEY,
  permission_id INT NOT NULL,
  submenu_id INT NOT NULL
);
# SELECT * FROM permission_submenu;

#任务表
CREATE TABLE yj_task(
  id int PRIMARY KEY,
  task_id VARCHAR(32) NOT NULL,
  task_name VARCHAR(32) NOT NULL,
  task_dep int NOT NULL,
  task_step VARCHAR(32) NOT NULL,
  task_staff int NOT NULL,
  task_date datetime NOT NULL,
  task_state INT NOT NULL,
  task_print INT NOT NULL,
  task_finish INT NOT NULL,
  staff_before INT NOT NULL,
  staff_now INT NOT NULL
);
INSERT INTO yj_task VALUES (1,'20160819001','消防系统隔离单申请1',20001,'工业安全科审批1',10001,'2016-08-19 18:00',1,1,1,10001,10002);
INSERT INTO yj_task VALUES (2,'20160819001','消防系统隔离单申请2',20001,'运行授权人审批审批2',10001,'2016-08-19 18:00',1,2,2,10001,10002);
INSERT INTO yj_task VALUES (3,'20160819001','消防系统隔离单申请3',20001,'工业安全科审批3',10001,'2016-08-19 18:00',1,1,3,10001,10002);
INSERT INTO yj_task VALUES (4,'20170819001','消防系统隔离单申请4',20001,'工业安全科审批4',10001,'2016-08-19 18:00',1,2,4,10001,10002);
INSERT INTO yj_task VALUES (5,'20170819001','消防系统隔离单申请5',20001,'工业安全科审批5',10001,'2016-08-19 18:00',1,1,1,10003,10001);
INSERT INTO yj_task VALUES (6,'20170819001','消防系统隔离单申请6',20001,'工业安全科审批6',10001,'2016-08-19 18:00',1,2,2,10003,10002);
INSERT INTO yj_task VALUES (7,'20170819001','消防系统隔离单申请7',20001,'工业安全科审批7',10001,'2016-08-19 18:00',1,1,3,10003,10002);
INSERT INTO yj_task VALUES (8,'20160819001','消防系统隔离单申请8',20002,'工业安全科审批8',10002,'2016-08-19 18:00',2,2,4,10003,10002);
INSERT INTO yj_task VALUES (9,'20160819001','消防系统隔离单申请9',20002,'工业安全科审批9',10002,'2016-08-19 18:00',2,1,1,10003,10002);
INSERT INTO yj_task VALUES (10,'20160819001','消防系统隔离单申请1',20002,'工业安全科审批10',10002,'2016-08-19 18:00',2,2,1,10003,10002);
INSERT INTO yj_task VALUES (11,'20160819001','消防系统隔离单申请2',20002,'工业安全科审批11',10002,'2016-08-19 18:00',2,1,2,10003,10002);
INSERT INTO yj_task VALUES (12,'20160819001','消防系统隔离单申请3',20002,'工业安全科审批12',10003,'2016-08-19 18:00',2,1,1,10003,10002);
INSERT INTO yj_task VALUES (13,'20160819001','消防系统隔离单申请4',20003,'工业安全科审批13',10001,'2016-08-19 18:00',1,2,2,10003,10002);
INSERT INTO yj_task VALUES (14,'20160819001','消防系统隔离单申请5',20003,'工业安全科审批14',10003,'2016-08-19 18:00',2,1,1,10003,10002);
INSERT INTO yj_task VALUES (15,'20160819001','消防系统隔离单申请6',20003,'工业安全科审批15',10003,'2016-08-19 18:00',2,1,3,10003,10002);
INSERT INTO yj_task VALUES (16,'20160819001','消防系统隔离单申请7',20003,'工业安全科审批16',10003,'2016-08-19 18:00',2,2,1,10003,10002);
INSERT INTO yj_task VALUES (17,'20160819001','消防系统隔离单申请8',20003,'工业安全科审批17',10003,'2016-08-19 18:00',2,1,4,10003,10002);
INSERT INTO yj_task VALUES (18,'20160819001','消防系统隔离单申请9',20003,'工业安全科审批18',10004,'2016-08-19 18:00',2,1,1,10003,10002);
INSERT INTO yj_task VALUES (19,'20160819001','消防系统隔离单申请10',20003,'工业安全科审批19',10004,'2016-08-19 18:00',2,2,1,10003,10002);
INSERT INTO yj_task VALUES (20,'20160819001','消防系统隔离单申请11',20003,'工业安全科审批20',10004,'2016-08-19 18:00',2,1,1,10003,10002);
# SELECT * FROM yj_task;


/*==============================================================*/
/* Table: PMS_BIMS_STORE                                        */
/*==============================================================*/
drop table if exists PMS_BIMS_STORE;
create table PMS_BIMS_STORE
(
   BIMS_STORE_ID        varchar(64) not null PRIMARY KEY comment '卫星库标识',
   BIMS_STORE_NAME      varchar(128) comment '卫星库名称',
   MANAGE_STAFF_NO      varchar(128) comment '管理人员编号',
   MANAGE_STAFF_NAME    varchar(128) comment '管理人员名称',
   EFFECT_FLAG          varchar(8) comment '是否有效 参见码表',
   CREATE_STAFF_NO      varchar(128) comment '创建人',
   CREATE_STAFF_NAME    varchar(128) comment '创建人姓名',
   CREATE_DATE          datetime comment '创建时间'
);

/*==============================================================*/
/* Table: PMS_RAY_USER                                          */
/*==============================================================*/
drop table if exists PMS_RAY_USER;
create table PMS_RAY_USER
(
   RAY_STAFF_ID         varchar(64) not null comment '探伤人员标识',
   STAFF_NO             varchar(128) comment '人员编号',
   STAFF_NAME           varchar(128) comment '人员名称',
   PASSCARD_NO          varchar(128) comment '通行卡号',
   ORG_ID               varchar(128) comment '单位名称',
   ORG_NAME             varchar(128) comment '单位名称',
   RT_RANK              varchar(128) comment 'RT级别',
   RT_NO                varchar(128) comment 'RT编号',
   EFFECT_BEG_DATE      datetime comment '有效起时间',
   EFFECT_END_DATE      datetime comment '有效止时间',
   EFFECT_FLAG          varchar(8) comment '是否有效 参见码表',
   CREATE_STAFF_NO      varchar(128) comment '创建人',
   CREATE_STAFF_NAME    varchar(128) comment '创建人姓名',
   CREATE_DATE          datetime comment '创建时间',
   primary key (RAY_STAFF_ID)
);

alter table PMS_RAY_USER comment '射线探伤人员';

/*==============================================================*/
/* Table: PMS_ROOM                                              */
/*==============================================================*/
drop table if exists PMS_ROOM;
create table PMS_ROOM
(
   ROOM_ID              varchar(64) not null comment '房间主键',
   PLANT_ID             varchar(64) comment '厂房标识',
   ROOM_NAME            varchar(128),
   ROOM_ADDR            varchar(256),
   FIRE_DENSITY         varchar(128),
   EFFECT_FLAG          varchar(8) comment '是否有效 参见码表',
   CREATE_STAFF_NO      varchar(128) comment '创建人',
   CREATE_STAFF_NAME    varchar(128) comment '创建人姓名',
   CREATE_DATE          datetime comment '创建时间',
   MAC_NO               varchar(128),
   primary key (ROOM_ID)
);

alter table PMS_ROOM comment '房间基础信息';

/*==============================================================*/
/* Table: PMS_MAC                                               */
/*==============================================================*/
drop table if exists PMS_MAC;
create table PMS_MAC
(
   MAC_ID               varchar(128) not null comment '机组标识',
   MAC_NO               varchar(128) comment '机组编号',
   MAC_NAME             varchar(128) comment '机组名称',
   MAC_MANAGE_STAFF_NO  varchar(128) comment '机组管理人员编号',
   MAC_MANAGE_STAFF_NAME varchar(128) comment '机组管理人员名称',
   EFFECT_FLAG          varchar(8) comment '是否有效 参见码表',
   CREATE_STAFF_NO      varchar(128) comment '创建人',
   CREATE_STAFF_NAME    varchar(128) comment '创建人姓名',
   CREATE_DATE          datetime comment '创建时间',
   primary key (MAC_ID)
);

alter table PMS_MAC comment '机组管理';

/*==============================================================*/
/* Table: RDMS_PROJ_BASE                                        */
/*==============================================================*/
create table RDMS_PROJ_BASE
(
   PROJ_ID              varchar(64) not null comment '业务主键',
   PROJ_NAME            varchar(128) comment '名称',
   PROJ_TYPE            varchar(128) comment '项目类型',
   APP_ORG_NO           varchar(128) comment '申请单位',
   APP_ORG_NAME         varchar(128) comment '申请单位名称',
   UNITE_APP_ORG_NO     varchar(128) comment '联合申报单位',
   UNITE_APP_ORG_NAME   varchar(128) comment '联合申报单位名称',
   CYCLE                numeric(32,0) comment '周期',
   TOTAL_BUDGET         numeric(16,2) comment '总预算',
   PURPOSE              varchar(256) comment '项目目的',
   SAFE_DESC            varchar(256) comment '安全性描述',
   RELIABLE_DESC        varchar(256) comment '可靠性描述',
   ECON_DESC            varchar(256) comment '可靠性描述',
   OTHER_DESC           varchar(256) comment '其他维度分析',
   ACHIEVEMENT_DESC     varchar(256) comment '成果应用',
   REAL_USER            varchar(256) comment '实际用户',
   POTENTIAL_USER       varchar(256) comment '潜在用户',
   CONTENT              varchar(256) comment '项目内容',
   PRIME_STAFF_NO       varchar(128) comment '项目负责人',
   PRIME_USER_DESC      varchar(256) comment '项目负责人描述',
   RIGHT_DESC           varchar(256),
   BENEFITS_DESC        varchar(256),
   FIXED_ASSETS         varchar(256),
   ACCEPT_STAND         varchar(256),
   ENGINEER_EVALUATE    varchar(256),
   ACCORD_EVALUATE      varchar(256),
   APPLICATION_EVALUATE varchar(256),
   TOTAL_EVALUATE       varchar(256),
   PMS_REQUIRE          varchar(256),
   ADVICE               varchar(256),
   EFFECT_FLAG          varchar(8) comment '是否有效 参见码表',
   CREATE_STAFF_NO      varchar(128) comment '创建人',
   CREATE_STAFF_NAME    varchar(128) comment '创建人姓名',
   CREATE_DATE          datetime comment '创建时间',
   primary key (PROJ_ID)
);

alter table RDMS_PROJ_BASE comment '科技管理项目的基本信息';










