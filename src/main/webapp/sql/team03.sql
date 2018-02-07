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
  staff_before INT NOT NULL,
  staff_now INT NOT NULL
);
INSERT INTO yj_task VALUES (1,'20160819001','消防系统隔离单申请',20001,'工业安全科审批1',10001,'2016-08-19 18:00',1,10001,10002);
INSERT INTO yj_task VALUES (2,'20160819001','消防系统隔离单申请',20001,'运行授权人审批审批2',10001,'2016-08-19 18:00',1,10001,10002);
INSERT INTO yj_task VALUES (3,'20160819001','消防系统隔离单申请',20001,'工业安全科审批3',10001,'2016-08-19 18:00',1,10001,10002);
INSERT INTO yj_task VALUES (4,'20170819001','消防系统隔离单申请',20001,'工业安全科审批4',10001,'2016-08-19 18:00',1,10001,10002);
INSERT INTO yj_task VALUES (5,'20170819001','消防系统隔离单申请',20001,'工业安全科审批5',10001,'2016-08-19 18:00',2,10003,10001);
INSERT INTO yj_task VALUES (6,'20170819001','消防系统隔离单申请',20001,'工业安全科审批6',10002,'2016-08-19 18:00',2,10003,10002);
INSERT INTO yj_task VALUES (7,'20170819001','消防系统隔离单申请',20001,'工业安全科审批7',10002,'2016-08-19 18:00',2,10003,10002);
INSERT INTO yj_task VALUES (8,'20160819001','消防系统隔离单申请',20002,'工业安全科审批8',10002,'2016-08-19 18:00',2,10003,10002);
INSERT INTO yj_task VALUES (9,'20160819001','消防系统隔离单申请',20002,'工业安全科审批9',10002,'2016-08-19 18:00',2,10003,10002);
INSERT INTO yj_task VALUES (10,'20160819001','消防系统隔离单申请',20002,'工业安全科审批10',10002,'2016-08-19 18:00',2,10003,10002);
INSERT INTO yj_task VALUES (11,'20160819001','消防系统隔离单申请',20002,'工业安全科审批11',10002,'2016-08-19 18:00',2,10003,10002);
INSERT INTO yj_task VALUES (12,'20160819001','消防系统隔离单申请',20002,'工业安全科审批12',10003,'2016-08-19 18:00',2,10003,10002);
INSERT INTO yj_task VALUES (13,'20160819001','消防系统隔离单申请',20003,'工业安全科审批13',10003,'2016-08-19 18:00',2,10003,10002);
INSERT INTO yj_task VALUES (14,'20160819001','消防系统隔离单申请',20003,'工业安全科审批14',10003,'2016-08-19 18:00',2,10003,10002);
INSERT INTO yj_task VALUES (15,'20160819001','消防系统隔离单申请',20003,'工业安全科审批15',10003,'2016-08-19 18:00',2,10003,10002);
INSERT INTO yj_task VALUES (16,'20160819001','消防系统隔离单申请',20003,'工业安全科审批16',10003,'2016-08-19 18:00',2,10003,10002);
INSERT INTO yj_task VALUES (17,'20160819001','消防系统隔离单申请',20003,'工业安全科审批17',10003,'2016-08-19 18:00',2,10003,10002);
INSERT INTO yj_task VALUES (18,'20160819001','消防系统隔离单申请',20003,'工业安全科审批18',10004,'2016-08-19 18:00',2,10003,10002);
INSERT INTO yj_task VALUES (19,'20160819001','消防系统隔离单申请',20003,'工业安全科审批19',10004,'2016-08-19 18:00',2,10003,10002);
INSERT INTO yj_task VALUES (20,'20160819001','消防系统隔离单申请',20003,'工业安全科审批20',10004,'2016-08-19 18:00',2,10003,10002);
# SELECT * FROM yj_task;







