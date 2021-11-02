--1. Âûâåñòè âñåõ ðàáîòíèêîâ ÷üè çàðïëàòû åñòü â áàçå, âìåñòå ñ çàðïëàòàìè.
select employees.employee_name, salary.monthly_salary 
from employees join employee_salary 
on employee_salary.employee_id = employees.id
join salary 
on employee_salary.salary_id = salary.id;

 --2. Вывести всех работников у которых ЗП меньше 2000.
select employees.employee_name, salary.monthly_salary 
from employees join employee_salary 
on employee_salary.employee_id = employees.id
join salary 
on employee_salary.salary_id = salary.id
where monthly_salary < 2000;

-- 3. Âûâåñòè âñå çàðïëàòíûå ïîçèöèè, íî ðàáîòíèê ïî íèì íå íàçíà÷åí. (ÇÏ åñòü, íî íå ïîíÿòíî êòî å¸ ïîëó÷àåò.)
select salary.monthly_salary 
from employees right join employee_salary 
on employee_salary.employee_id = employees.id
right join salary 
on employee_salary.salary_id = salary.id
where employee_name is null;

-- 4. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select salary.monthly_salary 
from employees right join employee_salary 
on employee_salary.employee_id = employees.id
right join salary 
on employee_salary.salary_id = salary.id
where employee_name is null and salary.monthly_salary < 2000;

--5.Найти всех работников кому не начислена ЗП.
select employees.employee_name, salary.monthly_salary 
from employees left join employee_salary 
on employee_salary.employee_id = employees.id
left join salary 
on employee_salary.salary_id = salary.id
where salary.monthly_salary is null;

-- 6. Вывести всех работников с названиями их должности.
select employees.employee_name, roles.role_name 
from roles_employee join employees 
on roles_employee.employee_id = employees.id
join roles 
on roles_employee.role_id = roles.id;

-- 7. Вывести имена и должность только Java разработчиков.
select employees.employee_name, roles.role_name 
from roles_employee join employees 
on roles_employee.employee_id = employees.id
join roles 
on roles_employee.role_id = roles.id
where role_name like '%Java developer%';

-- 8. Вывести имена и должность только Python разработчиков.
select employees.employee_name, roles.role_name 
from roles_employee join employees 
on roles_employee.employee_id = employees.id
join roles 
on roles_employee.role_id = roles.id
where role_name like '%Python developer%';

-- 9.  Вывести имена и должность всех QA инженеров.
select employees.employee_name, roles.role_name 
from roles_employee join employees 
on roles_employee.employee_id = employees.id
join roles 
on roles_employee.role_id = roles.id
where role_name like '%QA engineer%';

-- 10. Вывести имена и должность ручных QA инженеров.
select employees.employee_name, roles.role_name 
from roles_employee join employees
on roles_employee.employee_id = employees.id
join roles
on roles_employee.role_id = roles.id
where role_name like '%Manual QA engineer%';

-- 11.  Вывести имена и должность автоматизаторов QA
select employees.employee_name, roles.role_name 
from roles_employee join employees
on roles_employee.employee_id = employees.id
join roles
on roles_employee.role_id = roles.id
where role_name like '%Automation QA engineer%';

-- 12. Вывести имена и зарплаты Junior специалистов
select employees.employee_name, salary.monthly_salary, roles.role_name 
from employees join employee_salary
on employees.id = employee_salary.employee_id 
join salary 
on employee_salary.salary_id = salary.id
join roles_employee
on employees.id = roles_employee.employee_id 
join roles
on roles_employee.role_id = roles.id
where role_name like '%Junior%';

-- 13. Вывести имена и зарплаты Middle специалистов
select employees.employee_name, salary.monthly_salary, roles.role_name 
from employees join employee_salary
on employees.id = employee_salary.employee_id 
join salary 
on employee_salary.salary_id = salary.id
join roles_employee
on employees.id = roles_employee.employee_id 
join roles
on roles_employee.role_id = roles.id
where role_name like '%Middle%';

-- 14. Вывести имена и зарплаты Senior специалистов
select employees.employee_name, salary.monthly_salary, roles.role_name 
from employees join employee_salary
on employees.id = employee_salary.employee_id 
join salary 
on employee_salary.salary_id = salary.id
join roles_employee
on employees.id = roles_employee.employee_id 
join roles
on roles_employee.role_id = roles.id
where role_name like 'Senior%';

-- 15. Вывести зарплаты Java разработчиков
select salary.monthly_salary, roles.role_name 
from employees join employee_salary
on employees.id = employee_salary.employee_id 
join salary 
on employee_salary.salary_id = salary.id
join roles_employee
on employees.id = roles_employee.employee_id 
join roles
on roles_employee.role_id = roles.id
where role_name like '%Java developer%';

-- 16. Вывести зарплаты Python разработчиков
select salary.monthly_salary, roles.role_name 
from employees join employee_salary
on employees.id = employee_salary.employee_id 
join salary 
on employee_salary.salary_id = salary.id
join roles_employee
on employees.id = roles_employee.employee_id 
join roles
on roles_employee.role_id = roles.id
where role_name like '%Python developer%';

-- 17. Вывести имена и зарплаты Junior Python разработчиков
select employees.employee_name, salary.monthly_salary, roles.role_name 
from employees join employee_salary
on employees.id = employee_salary.employee_id 
join salary 
on employee_salary.salary_id = salary.id
join roles_employee
on employees.id = roles_employee.employee_id 
join roles
on roles_employee.role_id = roles.id
where role_name like '%Junior Python developer%';

-- 18. Âûâåñòè èìåíà è çàðïëàòû Middle JS ðàçðàáîò÷èêîâ
select employees.employee_name, salary.monthly_salary, roles.role_name 
from employees join employee_salary
on employees.id = employee_salary.employee_id 
join salary 
on employee_salary.salary_id = salary.id
join roles_employee
on employees.id = roles_employee.employee_id 
join roles
on roles_employee.role_id = roles.id
where role_name like '%Middle JavaScript developer%';

-- 19. Âûâåñòè èìåíà è çàðïëàòû Senior Java ðàçðàáîò÷èêîâ
select employees.employee_name, salary.monthly_salary, roles.role_name 
from employees join employee_salary
on employees.id = employee_salary.employee_id 
join salary 
on employee_salary.salary_id = salary.id
join roles_employee
on employees.id = roles_employee.employee_id 
join roles
on roles_employee.role_id = roles.id
where role_name like '%Senior Java developer%';

-- 20. Âûâåñòè çàðïëàòû Junior QA èíæåíåðîâ
select salary.monthly_salary 
from salary
join employee_salary  
on salary.id = employee_salary.salary_id
join employees  
on employee_salary.employee_id = employees.id
join roles_employee  
on employees.id =  roles_employee.employee_id 
join roles  
on  roles_employee.role_id = roles.id
where roles.role_name like 'Junior%QA%';

-- 21. Âûâåñòè ñðåäíþþ çàðïëàòó âñåõ Junior ñïåöèàëèñòîâ
select avg(salary.monthly_salary)
from salary join employee_salary  
on salary.id = employee_salary.salary_id
join employees 
on employee_salary.employee_id = employees.id
join roles_employee  
on employees.id =  roles_employee.employee_id 
join roles  
on  roles_employee.role_id = roles.id 
where roles.role_name like '%Junior%'
group by roles.role_name;

-- 22. Âûâåñòè ñóììó çàðïëàò JS ðàçðàáîò÷èêîâ
select sum (salary.monthly_salary)
from salary join employee_salary  
on salary.id = employee_salary.salary_id
join employees 
on employee_salary.employee_id = employees.id
join roles_employee  
on employees.id =  roles_employee.employee_id 
join roles  
on  roles_employee.role_id = roles.id 
where role_name like '%Java developer%'
group by roles.role_name;

-- 23. Âûâåñòè ìèíèìàëüíóþ ÇÏ QA èíæåíåðîâ
select min (salary.monthly_salary)
from salary join employee_salary  
on salary.id = employee_salary.salary_id
join employees 
on employee_salary.employee_id = employees.id
join roles_employee  
on employees.id =  roles_employee.employee_id 
join roles  
on  roles_employee.role_id = roles.id 
where roles.role_name like '%QA%';

-- 24. Âûâåñòè ìàêñèìàëüíóþ ÇÏ QA èíæåíåðîâ
select max (salary.monthly_salary)  
from salary join employee_salary  
on salary.id = employee_salary.salary_id
join employees 
on employee_salary.employee_id = employees.id
join roles_employee  
on employees.id =  roles_employee.employee_id 
join roles  
on  roles_employee.role_id = roles.id 
where roles.role_name like '%QA%';

-- 25. Âûâåñòè êîëè÷åñòâî QA èíæåíåðîâ
select count (roles.role_name)
from roles_employee join employees 
on roles_employee.employee_id = employees.id
join roles 
on roles_employee.role_id = roles.id
where role_name like '%QA%';

-- 26. Âûâåñòè êîëè÷åñòâî Middle ñïåöèàëèñòîâ.
select count (role_name)
from roles_employee join employees 
on roles_employee.employee_id = employees.id
join roles 
on roles_employee.role_id = roles.id
where role_name like '%Middle%';

-- 27. Âûâåñòè êîëè÷åñòâî ðàçðàáîò÷èêîâ
select count (role_name)
from roles_employee join employees 
on roles_employee.employee_id = employees.id
join roles 
on roles_employee.role_id = roles.id
where role_name like '%developer';

-- 28. Âûâåñòè ôîíä (ñóììó) çàðïëàòû ðàçðàáîò÷èêîâ.
select sum (salary.monthly_salary)  
from salary join employee_salary  
on salary.id = employee_salary.salary_id
join employees 
on employee_salary.employee_id = employees.id
join roles_employee  
on employees.id =  roles_employee.employee_id 
join roles  
on  roles_employee.role_id = roles.id 
where role_name like '%developer';

-- 29. Âûâåñòè èìåíà, äîëæíîñòè è ÇÏ âñåõ ñïåöèàëèñòîâ ïî âîçðàñòàíèþ
select employees.employee_name, salary.monthly_salary, roles.role_name 
from employees join employee_salary
on employee_salary.employee_id = employees.id
join salary 
on employee_salary.salary_id = salary.id
join roles_employee
on roles_employee.employee_id = employees.id
join roles
on roles_employee.role_id = roles.id
order by monthly_salary asc;

-- 30. Âûâåñòè èìåíà, äîëæíîñòè è ÇÏ âñåõ ñïåöèàëèñòîâ ïî âîçðàñòàíèþ ó ñïåöèàëèñòîâ ó êîòîðûõ ÇÏ îò 1700 äî 2300
select employees.employee_name, salary.monthly_salary, roles.role_name 
from employees join employee_salary
on employee_salary.employee_id = employees.id
join salary 
on employee_salary.salary_id = salary.id
join roles_employee
on roles_employee.employee_id = employees.id
join roles
on roles_employee.role_id = roles.id
where monthly_salary between 1700 and 2300
order by monthly_salary asc;

-- 31. Âûâåñòè èìåíà, äîëæíîñòè è ÇÏ âñåõ ñïåöèàëèñòîâ ïî âîçðàñòàíèþ ó ñïåöèàëèñòîâ ó êîòîðûõ ÇÏ ìåíüøå 2300
select employees.employee_name, salary.monthly_salary, roles.role_name 
from employees join employee_salary
on employee_salary.employee_id = employees.id
join salary 
on employee_salary.salary_id = salary.id
join roles_employee
on roles_employee.employee_id = employees.id
join roles
on roles_employee.role_id = roles.id
where monthly_salary < 2300
order by monthly_salary asc;

-- 32. Âûâåñòè èìåíà, äîëæíîñòè è ÇÏ âñåõ ñïåöèàëèñòîâ ïî âîçðàñòàíèþ ó ñïåöèàëèñòîâ ó êîòîðûõ ÇÏ ðàâíà 1100, 1500, 2000
select employees.employee_name, salary.monthly_salary, roles.role_name 
from employees join employee_salary
on employee_salary.employee_id = employees.id
join salary 
on employee_salary.salary_id = salary.id
join roles_employee
on roles_employee.employee_id = employees.id
join roles
on roles_employee.role_id = roles.id
where monthly_salary in (1100) or monthly_salary in (1500) or monthly_salary in (2000)
order by monthly_salary asc;
