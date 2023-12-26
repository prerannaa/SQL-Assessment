CREATE TABLE produtcs (
    productid INTEGER PRIMARY KEY,
	productname VARCHAR(255),
	supplierid INTEGER REFERENCES suppliers(supplierid),
	categoryid INTEGER REFERENCES categories(categoryid),
	unit VARCHAR(50),
	price VARCHAR(20)
);