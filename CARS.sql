-- SQLite
CREATE TABLE CARS(
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    NAME VARCHAR(120) NOT NULL,
    YEAR INTEGER NOT NULL,
    COLOR VARCHAR(32) NOT NULL,
    KM FLOAT(10,2) NOT NULL,
    STATUS VARCHAR(17) NOT NULL,
    BRAND_ID INTEGER NOT NULL,
    MODEL_ID INTEGER NOT NULL,

     FOREIGN KEY (BRAND_ID) REFERENCES CAR_BRAND (ID)
      FOREIGN KEY (MODEL_ID) REFERENCES CAR_MODEL (ID)
);

INSERT INTO CARS(NAME, YEAR, COLOR, KM, STATUS, BRAND_ID, MODEL_ID)
            VALUES('Chevrolet Onix LT', 2016, 'Preto', 8000.00, 'Liberado', 1, 3),
                  ('Hyunday HB20 1.6', 2022, 'Prata', 3000.00, 'Em manutenção', 3, 3),
                  ('Toyota Yaris', 2021, 'Branco', 10000.00, 'Liberado', 2, 3),
                  ('Fiat Cronos', 2022, 'Preto', 2500.00, 'Liberado', 8, 2),
                  ('Honda HR-V', 2018, 'Prata', 40000.00, 'Em manutenção', 7, 6),
                  ('VW Amarok', 2019, 'Prata', 25000.00, 'Liberado', 4, 6)

