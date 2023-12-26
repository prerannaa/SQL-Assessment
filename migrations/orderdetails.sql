CREATE TABLE orderDetails (
    orderdetailid INTEGER PRIMARY KEY,
	orderid INTEGER REFERENCES orders(orderid),
	productid INTEGER REFERENCES products(productid),
	quantity INTEGER
);