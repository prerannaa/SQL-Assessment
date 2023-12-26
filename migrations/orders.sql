CREATE TABLE orders (
    orderid INTEGER PRIMARY KEY,
	customerid INTEGER REFERENCES customers(customerid),
	employeeid INTEGER REFERENCES employees(employeeid),
	orderdate DATE,
	shipperid INTEGER REFERENCES shippers(shipperid)
);