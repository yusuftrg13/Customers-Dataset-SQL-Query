use ETRADE2
--I just want to start by CUSTOMERS Table

--We'll see all of the columns which are in the Customers section
Select * From CUSTOMERS

--Let's combine namesurname with telnr
Select NAMESURNAME,TELNR from CUSTOMERS

--Let's find out Cafer KABAL information
Select NAMESURNAME,TELNR,BIRTHDATE From CUSTOMERS
WHERE NAMESURNAME='Cafer KABAL'

--How many woman and man are there
Select GENDER, Count(*) As Total_Gender
From CUSTOMERS
Group by GENDER;

--How can we reach that how many people are there in a cities
SELECT CITY,COUNT(*) AS TOTAL_PERSON_BY_CÝTÝES
FROM CUSTOMERS
GROUP BY CITY

--Different Version
Select CITY,TOWN,Count(*) as Total
From CUSTOMERS
Group by CITY,TOWN
Order By CITY,TOWN

--Who is the oldest person in the list
Select TOP 1 *
From CUSTOMERS
ORDER BY BIRTHDATE ASC;

--Who is the youngest person in the list
Select TOP 1 *
From CUSTOMERS
Order By BIRTHDATE DESC;


--Let's analyze the name like which name more than other names
SELECT NAME_,COUNT(*) AS FREQUENCY
FROM CUSTOMERS
GROUP BY NAME_
ORDER BY FREQUENCY DESC;

--How many customer are man in the Çukurova
Select Count(*) as total
From CUSTOMERS
WHERE TOWN='Çukurova' and GENDER='E'

SELECT CITY, COUNT(*) AS TOTAL
FROM customers
WHERE NAME_ = 'Ahmet'
GROUP BY CITY;
