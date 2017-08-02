select 
sum(salary), --suma
round(avg(salary),2),  --zaokraglowa srednia
count(EMPLOYEE_ID), --ilosc pracownikow, zliczanie po polach obowiazkowych
count(*), --nie nalezy stosowac, liczy kazdy wpis, przydatne do baz gdzie nie ma zadnego pola obowiazkowego
count(MANAGER_ID), --przyklad zliczania po polach nieobowiazkowych
min(salary), --minimalna pensja
max(salary) --maksymalna pensja
from EMPLOYEES