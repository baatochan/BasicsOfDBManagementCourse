--Nazwisk (last_name), wyp?at (salary) oraz kodów stanowisk (job_id) pracowników, których kod
--stanowiska ko?czy si? na “_MGR”, posortowanych malej?co pod wzgl?dem wyp?aty (salary).

--select last_name, salary, job_id from employees where job_id like '%#_MGR' escape '#' order by salary desc

--Liczby pracowników przypisanych do ka?dego kodu stanowiska (job_id) wraz z odpowiadaj?cymi
--kodami stanowisk, posortowanych malej?co pod wzgl?dem liczby pracowników.

--select job_id, count(employee_id) from employees group by job_id order by count(employee_id) desc

--Numerów kierowników (manager_id), których pracownicy zarabiaj? ?rednio ponad 2000 oraz ?rednich
--wyp?at wszystkich pracowników do nich przypisanych.

--select manager_id, avg(salary) from employees where manager_id like '%' group by manager_id having avg(salary)>2000

--Nazw dzia?ów (department_name), nazwisk (last_name) oraz p?ac (salary) pracowników, którzy
--zarabiaj? ponad 12000, wykorzystuj?c klauzul? JOIN

--select departments.department_name, employees.last_name, employees.salary from employees inner join departments on departments.department_id = employees.department_id where employees.salary>12000 
--select employees.last_name, employees.salary from employees where employees.salary>12000 

--Nazw pa?stw (country_name) i ilo?ci pracowników, którzy w nich pracuj?

--select countries.country_name, count(employees.employee_id) 
--from countries 
--left join locations on countries.country_id=locations.country_id 
--left join departments on locations.location_id = departments.location_id 
--left join employees on departments.department_id = employees.department_id 
--group by countries.country_name;

--Nazwisk managerów (last_name), ich wyp?at oraz ilo?ci pracowników, którzy s? do nich przypisani
