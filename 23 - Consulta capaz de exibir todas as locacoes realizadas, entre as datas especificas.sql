SELECT CUSTOMERS.NAME AS 'Nome do Cliente',
       CARS.NAME AS 'Carro',
       LOCATIONS.START_DATE AS 'Data Início',
       LOCATIONS.END_DATE AS 'Data Final',
       EMPLOYEES.NAME AS 'Funcionário' FROM LOCATIONS
JOIN CUSTOMERS ON (CUSTOMERS.ID = LOCATIONS.CUSTOMER_ID)
JOIN EMPLOYEES ON (EMPLOYEES.ID = LOCATIONS.EMPLOYEE_ID)
JOIN CARS ON (CARS.ID = LOCATIONS.CAR_ID)
WHERE LOCATIONS.START_DATE BETWEEN '2022-05-20' AND '2022-12-25'