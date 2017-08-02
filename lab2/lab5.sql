SELECT employee_id, last_name, first_name, salary, job_id
FROM EMPLOYEES
WHERE last_name --not
--like 'E%' --case sensitive; E i dowolna ilosc znakow po nim
--like '___a%' --3 dowolne znaki i a
like 'Nowak#_%' ESCAPE '#' --traktujemy _ jako znak, a nie jako funkcje; znak po # traktujemy jako znak, nie jako symbol