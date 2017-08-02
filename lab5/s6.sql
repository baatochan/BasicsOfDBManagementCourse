--4.1
select last_name as "Nazwisko", salary as "Pensja" from employees order by last_name asc
--4.2
select department_name as "Nazwa departamentu", department_id as "ID departamentu" from departments where department_id>200 order by department_name asc, department_id desc
--4.3
select count(employee_id), sum(salary) from employees where job_id like 'AD_P%'
--4.4
select count(employee_id) from employees where hire_date>'08/03/01' and hire_date<'08/03/21'