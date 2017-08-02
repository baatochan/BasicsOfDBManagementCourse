--5.1
select job_id, count(last_name) from EMPLOYEES group by job_id order by count(last_name) desc;
--5.2
select manager_id, max(salary) from Employees where manager_id like '%' group by manager_id;
--5.3
select job_id as "Kod stanowiska", avg(salary) as "Srednia pensja" from Employees group by job_id order by avg(salary) DESC;
--5.4
select job_id as "Kod stanowiska", count(last_name) as "Ilosc pracownikow", min(salary) as "Najmniejsza pensja", avg(salary) as "Srednia pensja", max(salary) as "Najwieksza pensja" from Employees where salary>5000 group by job_id order by min(salary) ASC;
--5.5
select manager_id, avg(salary) from Employees where manager_id like '%' group by manager_id having avg(salary)>5000;