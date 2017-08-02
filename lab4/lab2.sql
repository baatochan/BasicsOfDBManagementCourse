select last_name, count(last_name), sum(salary)
from EMPLOYEES
where salary>3000 --ograniczenie do rekordow

group by last_name
having sum(Salary)<17000 --do grup

order by sum(salary) desc