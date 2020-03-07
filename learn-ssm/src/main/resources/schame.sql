-- 部门表
create table if not exists tbl_dept
(
  id        integer primary key auto_increment,
  dept_name varchar(50)
);

-- 员工表
create table if not exists tbl_employee
(
  id        integer primary key auto_increment,
  last_name varchar(50),
  email     varchar(50),
  gender    varchar(5),
  d_id      integer,
  CONSTRAINT fk_e_e FOREIGN KEY (d_id) REFERENCES tbl_dept (id)

);


-- 添加data

insert into tbl_dept
values (1, '开发部门'),
       (2, '销售部门'),
       (3, '售后部门');
insert into tbl_employee
values (1, 'lisa', '123@123.com', '0', 1),
       (2, 'tom', '123@456.com', '1', 2),
       (3, 'lisa2', '123@123.com', '0', 3),
       (4, 'lisa3', '123@123.com', '1', 1),
       (5, 'lisa4', '123@123.com', '0', 2),
       (6, 'lisa5', '123@123.com', '0', 3),
       (7, 'lisa6', '123@123.com', '1', 1),
       (8, 'lisa7', '123@123.com', '1', 2),
       (9, 'lisa8', '123@123.com', '0', 3),
       (10, 'lisa9', '123@123.com', '1', 1),
       (11, 'lisa10', '123@123.com', '0', 2),
       (12, 'lisa11', '123@123.com', '1', 3),
       (13, 'lisa12', '123@123.com', '0', 1);

