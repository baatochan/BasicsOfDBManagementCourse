SELECT EMPLOYEE_ID, LAST_NAME, FIRST_NAME, SALARY, JOB_ID
from employees

where 
--salary --not 
--between 2000 and 10000, --zakres

--job_id --not
--in ('IT_PROG', 'FI_ACCOUNT')
((job_id='IT_PROG') OR (job_id='FI_ACCOUNT'))