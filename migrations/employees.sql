CREATE TABLE employees (
    employeeid INTEGER PRIMARY KEY,
    lastname VARCHAR(255),
    firstname VARCHAR(255),
    birthdate DATE,
    photo BYTEA,
    notes TEXT
);