#CREATE DATABASE team03;

USE team03;
# DROP TABLE test01;
# DROP TABLE yj_staff;
# DROP TABLE yj_department;
# DROP TABLE yj_role;
# DROP TABLE yj_permission;
# DROP TABLE yj_menu;
# DROP TABLE yj_submenu;
# DROP TABLE department_permission;
# DROP TABLE staff_permission;
# DROP TABLE permission_submenu;

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
INSERT  INTO yj_staff VALUES (10001,'孙袖航','619676988@qq.com','sxh','123456',20001);
INSERT  INTO yj_staff VALUES (10002,'井熙铎','1248334638@qq.com','jxd','123456',20001);
INSERT  INTO yj_staff VALUES (10003,'郝旭东','1585651756@qq.com','hxd','123456',20001);
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








