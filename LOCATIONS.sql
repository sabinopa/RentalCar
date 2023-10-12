-- SQLite
CREATE TABLE LOCATIONS(
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    START_DATE DATETIME NOT NULL,
    END_DATE DATETIME NOT NULL,
    TOTAL FLOAT(10,2) NOT NULL,
    CUSTOMER_ID INTEGER NOT NULL,
    CAR_ID INTEGER NOT NULL,
    EMPLOYEE_ID INTEGER NOT NULL,

    FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEES (ID)
    FOREIGN KEY (CAR_ID) REFERENCES CAR (ID)
    FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER (ID)
);

INSERT INTO LOCATIONS(START_DATE, END_DATE, TOTAL, CUSTOMER_ID, CAR_ID, EMPLOYEE_ID)
            VALUES ('2021-04-01', '2021-04-07', 1500.00, 1, 1, 2),
                   ('2022-05-20', '2022-05-30', 1800.00, 2, 1, 5),
                   ('2021-03-10', '2021-03-21', 2500.00, 5, 6, 5),
                   ('2018-02-20', '2018-03-05', 1250.00, 6, 4, 6),
                   ('2022-11-20', '2022-11-29', 900.00, 1, 3, 2),
                   ('2019-10-01', '2019-10-29', 2800.00, 3, 1, 6)

SELECT * FROM LOCATIONS;