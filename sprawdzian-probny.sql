--Nazwisk (last_name), wyp?at (salary) oraz kod�w stanowisk (job_id) pracownik�w, kt�rych kod
--stanowiska ko?czy si? na �_MGR�, posortowanych malej?co pod wzgl?dem wyp?aty (salary).

--select last_name, salary, job_id from employees where job_id like '%#_MGR' escape '#' order by salary desc

--Liczby pracownik�w przypisanych do ka?dego kodu stanowiska (job_id) wraz z odpowiadaj?cymi
--kodami stanowisk, posortowanych malej?co pod wzgl?dem liczby pracownik�w.

--select job_id, count(employee_id) from employees group by job_id order by count(employee_id) desc

--Numer�w kierownik�w (manager_id), kt�rych pracownicy zarabiaj? ?rednio ponad 2000 oraz ?rednich
--wyp?at wszystkich pracownik�w do nich przypisanych.

--select manager_id, avg(salary) from employees where manager_id like '%' group by manager_id having avg(salary)>2000

--Nazw dzia?�w (department_name), nazwisk (last_name) oraz p?ac (salary) pracownik�w, kt�rzy
--zarabiaj? ponad 12000, wykorzystuj?c klauzul? JOIN

--select departments.department_name, employees.last_name, employees.salary from employees inner join departments on departments.department_id = employees.department_id where employees.salary>12000 
--select employees.last_name, employees.salary from employees where employees.salary>12000 

--Nazw pa?stw (country_name) i ilo?ci pracownik�w, kt�rzy w nich pracuj?

--select countries.country_name, count(employees.employee_id) 
--from countries 
--left join locations on countries.country_id=locations.country_id 
--left join departments on locations.location_id = departments.location_id 
--left join employees on departments.department_id = employees.department_id 
--group by countries.country_name;

--Nazwisk manager�w (last_name), ich wyp?at oraz ilo?ci pracownik�w, kt�rzy s? do nich przypisani
