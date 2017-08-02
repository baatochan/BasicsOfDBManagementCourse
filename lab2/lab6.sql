--3.1
--SELECT last_name, salary FROM EMPLOYEES where MANAGER_ID=100 AND salary>10000
--3.2
--SELECT distinct job_id, manager_id from EMPLOYEES where MANAGER_ID=100 OR MANAGER_ID=102
--3.3
--SELECT last_name AS "Nazwisko", salary AS "Wypata", job_id AS "Kod stanowiska" FROM EMPLOYEES where job_id LIKE '%_MGR' ORDER BY last_name ASC, salary DESC
--3.4
SELECT job_id AS "Kod stanowiska", job_title AS "Nazwa stanowiska" FROM Jobs WHERE job_title LIKE '% %'