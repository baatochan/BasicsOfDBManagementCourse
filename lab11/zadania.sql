--11.1. Dodanie do tabeli employees wiersza opisuj?cego pracownika o numerze (employee_id) 10, o dowolnych warto?ciach we wszystkich 
--wymaganych kolumnach (atrybut kolumny Nullable = "No") oraz numerze kierownika (manager_id) takim samym, jak numer kierownika 
--(manager_id) pracownika o nazwisku Chung. Nie wype?niaj pozosta?ych kolumn. (podpowied?: Wykorzystaj podzapytanie. Pami?taj, ?e 
--warto?ci typu VARCHAR2 oraz DATE musz? by? wpisywane w pojedynczych apostrofach, sprawd? te? ograniczenia na?o?one na kolumny w 
--tabeli employees, np. w widoku "Constraints")

insert into Employees (employee_id, last_name, email, hire_date, job_id, manager_id) values (10, 'Kowalski', 'kowalski', '24-MAY-17', 'IT_PROG', (select manager_id from employees where last_name='Chung'));

--11.2. Zmodyfikowanie w tabeli employees wiersza opisuj?cego pracownika o numerze (employee_id) 10, nadaj?c mu pensj? (salary) o warto?ci ?redniej pensji pracowników, których nazwisko (last_name) rozpoczyna si? od litery K. (podpowied?: Wykorzystaj podzapytanie.)

update Employees SET salary=(select avg(salary) from employees where last_name LIKE 'K%') WHERE employee_id=10;

--*11.3. Usuni?cie z tabeli employees wszystkich wierszy opisuj?cych pracowników, którzy nie maj? przypisanego numeru telefonu.

delete from employees where phone_number is null;