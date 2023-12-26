CREATE TABLE customers (
    customerid INTEGER PRIMARY KEY,
    customername VARCHAR(255) NOT NULL,
    contactname VARCHAR(255),
    address TEXT,
    city VARCHAR(255),
    postalcode VARCHAR(20),
    country VARCHAR(255)
);
