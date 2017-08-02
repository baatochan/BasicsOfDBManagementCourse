select distinct last_name --usuwa powtarzajace sie wyniki
from employees
where salary>= 2000 and salary <= 10000