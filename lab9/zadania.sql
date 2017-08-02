--9.1. Nazw dzia?ów (department_name), nazwisk (last_name) oraz p?ac (salary) pracowników, którzy zarabiaj? ponad 12000, bez wykorzystania klauzuli JOIN (tabele employees oraz departments -> 8 rows, 3 columns)

SELECT departments.department_name, employees.last_name, employees.salary from EMPLOYEES, DEPARTMENTS where EMPLOYEES.department_id = DEPARTMENTS.department_id and employees.salary > 12000;

--9.2. Nazw dzia?ów (department_name), nazwisk (last_name) oraz p?ac (salary) pracowników, którzy zarabiaj? ponad 12000, wykorzystuj?c klauzul? JOIN (tabele employees oraz departments -> 8 rows, 3 columns)

SELECT departments.department_name, employees.last_name, employees.salary from EMPLOYEES JOIN departments ON EMPLOYEES.department_id = DEPARTMENTS.department_id where employees.salary > 12000;

--9.3. Nazwisk pracowników (last_name), nazw dzia?ów (department_name) i miast (city), w których pracuj?, bez wykorzystania klauzuli JOIN (tabele employees, departments oraz locations -> 106 rows, 3 columns)

SELECT employees.last_name, departments.department_name, locations.city from EMPLOYEES, DEPARTMENTS, LOCATIONS where EMPLOYEES.department_id = DEPARTMENTS.department_id AND DEPARTMENTS.location_id = LOCATIONS.location_id;

--9.4. Nazwisk pracowników (last_name), nazw dzia?ów (department_name) i miast (city), w których pracuj?, wykorzystuj?c klauzul? JOIN (tabele employees, departments oraz locations -> 106 rows, 3 columns)

SELECT employees.last_name, departments.department_name, locations.city from EMPLOYEES JOIN DEPARTMENTS ON EMPLOYEES.department_id = DEPARTMENTS.department_id JOIN LOCATIONS ON DEPARTMENTS.location_id = LOCATIONS.location_id;

--9.5. Nazw dzia?ów (department_name) i ilo?ci pracowników, którzy w nich pracuj? (tabele employees oraz departments -> 11 rows, 2 columns)

SELECT DEPARTMENTS.department_name, count(EMPLOYEES.employee_id) FROM DEPARTMENTS JOIN EMPLOYEES ON EMPLOYEES.department_id = DEPARTMENTS.department_id GROUP BY DEPARTMENTS.department_name;

--*9.6. Nazw pa?stw (country_name) i ilo?ci pracowników, którzy w nich pracuj? (4 rows, 2 columns)

SELECT COUNTRIES.country_name, count(EMPLOYEES.employee_id) FROM COUNTRIES JOIN LOCATIONS ON LOCATIONS.COUNTRY_ID = COUNTRIES.COUNTRY_ID JOIN DEPARTMENTS ON DEPARTMENTS.LOCATION_ID = LOCATIONS.LOCATION_ID JOIN EMPLOYEES ON EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID GROUP BY COUNTRIES.country_name;

--*9.7. Nazwisk pracowników (last_name) i nazwisk ich kierowników (last_name), posortowane rosn?co po nazwiskach kierowników. U?yj aliasów kolumn. (106 rows)

SELECT EMPLOYEES.last_name AS "Nazwisko pracownika", manag.last_name AS "Nazwisko menagera" FROM EMPLOYEES JOIN EMPLOYEES manag ON EMPLOYEES.MANAGER_ID = manag.EMPLOYEE_ID ORDER BY manag.last_name ASC;