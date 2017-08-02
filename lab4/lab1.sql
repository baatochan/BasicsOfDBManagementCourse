select last_name, count(last_name), sum(salary)
from EMPLOYEES
--where
group by last_name
order by last_name desc