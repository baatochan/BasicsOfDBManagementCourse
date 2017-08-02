--10.1. Nazwisk pracownik�w (last_name), wszystkich nazw dzia?�w (department_name) oraz wszystkich miast (city), w kt�rych mog? pracowa? (OUTER JOIN, tabele employees, departments oraz locations -> 138 rows, 3 columns

SELECT Employees.last_name, Departments.department_name, Locations.city FROM Employees RIGHT OUTER JOIN Departments ON Employees.department_id = Departments.department_id FULL OUTER JOIN Locations ON Locations.location_id = Departments.location_id;

--10.2. Nazw dzia?�w (department_name), kt�re zatrudniaj? ponad 5 pracownik�w wraz z ilo?ciami pracownik�w, kt�rzy w nich pracuj?, wykorzystuj?c klauzul? NATURAL JOIN (HAVING, tabele departments oraz employees -> 2 rows, 2 columns)

SELECT Departments.department_name, count(Employees.employee_id) FROM Departments NATURAL JOIN Employees GROUP BY Departments.department_name HAVING count(Employees.employee_id)>5;

--10.3. Nazw dzia?�w (department_name), kt�re zatrudniaj? ponad 5 pracownik�w wraz z ilo?ciami pracownik�w, kt�rzy w nich pracuj?, nie wykorzystuj?c klauzuli NATURAL JOIN (HAVING, tabele departments oraz employees -> 4 rows, 2 columns)

SELECT Departments.department_name, count(Employees.employee_id) FROM Departments JOIN Employees ON Employees.department_id = Departments.department_id GROUP BY Departments.department_name HAVING count(Employees.employee_id)>5;

--10.4. Nazwisk pracownik�w (last_name) oraz ich wyp?at (salary) wyra?one w procentach warto?ci ?rodkowej p?acy ustalonej dla danego stanowiska, zaokr?glone do warto?ci ca?kowitych. Posortuj wyniki malej?co po warto?ciach procentowych. (kolumny min_salary oraz max_salary w tabeli jobs to minimalne oraz maksymalne p?ace ustalone dla ka?dego stanowiska) (ROUND, tabele employees oraz jobs -> 107 rows, 2 columns)

SELECT Employees.last_name, ROUND((100*(Employees.salary/((Jobs.max_salary+Jobs.min_salary)/2))),0) AS "Pensja w % srodkowej pensji" FROM Employees JOIN Jobs ON Employees.job_id = Jobs.job_id ORDER BY "Pensja w % srodkowej pensji" DESC;

--*10.5. Nazw dzia?�w (department_name), w kt�rych pracuje co najmniej dw�ch pracownik�w, kt�rzy zarabiaj? ponad 80% maksymalnej p?acy ustalonej na swoim stanowisku (max_salary), wraz z ilo?ciami pracownik�w spe?niaj?cymi to kryterium. (tabele employees, departments oraz jobs -> 3 rows, 2 columns)

SELECT Departments.department_name, count(Employees.Employee_id) FROM Departments JOIN Employees ON Employees.department_id = Departments.department_id JOIN Jobs ON Employees.job_id =Jobs. job_id WHERE Employees.salary > (0.8 * Jobs.max_salary) GROUP BY Departments.department_name HAVING count(Employees.Employee_id) > 2;