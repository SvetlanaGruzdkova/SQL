
--Создать таблицу employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null
--Наполнить таблицу employee 70 строками.

create table employees (
id serial primary key,
employee_name varchar (50) not null
);
insert into employees (id, employee_name)
values (default, 'Natasha Zagoryanskaya');
select * from employees;
--====================================================
--Создать таблицу salary
--- id. Serial  primary key,
--- monthly_salary. Int, not null
--Наполнить таблицу salary 15 строками:

create table salary (
id serial primary key,
monthly_salary varchar (30) not null
);
alter table salary
alter column salary type int
using salary::integer;
insert into salary(id, monthly_salary)
values (default, 2400);
select * from salary;
--=====================================================
--Создать таблицу employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null
--Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id

create table employee_salary (
id serial  primary key,
employee_id int not null unique,
salary_id int not null
);
insert into employee_salary (id, employee_id, salary_id)
values (default, 25, 14);
insert into employee_salary (id, employee_id, salary_id)
values (default, 79, 13);
select * from employee_salary;
--=======================================================
--Создать таблицу roles
--- id. Serial  primary key,
--- role_name. int, not null, unique
--Поменять тип столба role_name с int на varchar(30)
--Наполнить таблицу roles 20 строками:


create table roles (
id serial primary key,
role_name int not null unique
);
alter table roles
alter column role_name type varchar(30)
using role_name::integer;
insert into roles (id, role_name)
values (default, 'Senior Automation QA engineer');
select * from roles;
--==========================================================
--Создать таблицу roles_employee
--- id. Serial  primary key,
--- employee_id. Int, not null, unique (âíåøíèé êëþ÷ äëÿ òàáëèöû employees, ïîëå id)
--- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
--Наполнить таблицу roles_employee 40 строками:

create table roles_employee (
id Serial  primary key,
employee_id Int not null unique,
role_id Int not null, 
foreign key (employee_id)
references employees (id),
foreign key (role_id )
references roles (id)
);
insert into roles_employee (id, employee_id, role_id)
values (default, 57, 12);
select * from roles_employee;
