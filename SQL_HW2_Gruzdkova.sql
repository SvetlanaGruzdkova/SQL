
--������� ������� employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null
--��������� ������� employee 70 ��������.
create table employees (
id serial primary key,
employee_name varchar (50) not null
);
insert into employees (id, employee_name)
values (default, 'Natasha Zagoryanskaya');
select * from employees;
--====================================================
--������� ������� salary
--- id. Serial  primary key,
--- monthly_salary. Int, not null
--��������� ������� salary 15 ��������:
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
--������� ������� employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null
--��������� ������� employee_salary 40 ��������:
--- � 10 ����� �� 40 �������� �������������� employee_id
create table employee_salary (
id serial  primary key,
employee_id int not null unique,
salary_id int not null,
foreign key (employee_id)
references employees (id),
foreign key (salary_id )
references salary (id)
);
insert into employee_salary (id, employee_id, salary_id)
values (default, 25, 14);
insert into employee_salary (id, employee_id, salary_id)
values (default, 79, 13);
select * from employee_salary;
--=======================================================
--������� ������� roles
--- id. Serial  primary key,
--- role_name. int, not null, unique
--�������� ��� ������ role_name � int �� varchar(30)
--��������� ������� roles 20 ��������:
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
--������� ������� roles_employee
--- id. Serial  primary key,
--- employee_id. Int, not null, unique (������� ���� ��� ������� employees, ���� id)
--- role_id. Int, not null (������� ���� ��� ������� roles, ���� id)
--��������� ������� roles_employee 40 ��������:

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
