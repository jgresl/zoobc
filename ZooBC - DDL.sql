DROP TABLE IF EXISTS UserAccount;
DROP TABLE IF EXISTS Animal;
DROP TABLE IF EXISTS CreditCard;
DROP TABLE IF EXISTS Warehouse;
DROP TABLE IF EXISTS OrderShipment;
DROP TABLE IF EXISTS ShippingOption;
DROP TABLE IF EXISTS TaxOption;
DROP TABLE IF EXISTS ShoppingCart;
DROP TABLE IF EXISTS Reviews;
DROP TABLE IF EXISTS Stores;

CREATE TABLE UserAccount (
	User_ID INTEGER,
	userEmail VARCHAR(30) NOT NULL,
	userPassword VARCHAR(20) NOT NULL,
	isAdmin BOOLEAN, 
	firstName VARCHAR(20) NOT NULL,
	lastName VARCHAR(20) NOT NULL,
	phoneNumber INTEGER NOT NULL,
	address VARCHAR(80) NOT NULL,
	country VARCHAR(20) NOT NULL,
	stateProvince CHAR(2) NOT NULL,
	zipPostal VARCHAR(10) NOT NULL,
	city VARCHAR(20) NOT NULL,
	streetName VARCHAR(20) NOT NULL,
	streetNumber INTEGER NOT NULL,
	aptNumber INTEGER,
	PRIMARY KEY (User_ID),
	FOREIGN KEY (cart_ID) REFERENCES ShoppingCart(cart_ID),
	UNIQUE (userEmail),
);

CREATE TABLE Animal (
	animal_ID INTEGER,
	animalName VARCHAR(20) NOT NULL,
	animalType VARCHAR(10) NOT NULL,
	animalGender VARCHAR(10) NOT NULL,
	animalSize VARCHAR(10) NOT NULL,
	animalTemper VARCHAR(10) NOT NULL,
	animalStatus VARCHAR(20) NOT NULL,
	animalPrice CURRENCY NOT NULL,
	description VARCHAR(255) NOT NULL,
	image BLOB,
	PRIMARY KEY (animal_ID)
);

CREATE TABLE CreditCard (
	card_ID INTEGER,
	cardType VARCHAR(10) NOT NULL,
	cardNumber CHAR(16) NOT NULL,
	cardExpiration CHAR(4) NOT NULL,
	cardCCV CHAR(3) NOT NULL,
	billingAddress VARCHAR(80) NOT NULL,
	country VARCHAR(20) NOT NULL,
	stateProvince CHAR(2) NOT NULL,
	zipPostal VARCHAR(10) NOT NULL,
	city VARCHAR(20) NOT NULL,
	streetName VARCHAR(20) NOT NULL,
	streetNumber INTEGER NOT NULL,
	aptNumber INTEGER,
	PRIMARY KEY (card_ID)
);

CREATE TABLE Warehouse (
	warehouse_ID INTEGER,
	continent VARCHAR(20),
	country VARCHAR(20),
	PRIMARY KEY (warehouse_ID)
);

CREATE TABLE OrderShipment (
	order_ID INTEGER,
	orderDate DATETIME NOT NULL,
	orderStatus VARCHAR(10) NOT NULL,
	subTotal CURRENCY,
	shippingCost CURRENCY,
	taxCost CURRENCY,
	grandTotal CURRENCY,
	cardType VARCHAR(10) NOT NULL,
	cardNumber CHAR(16) NOT NULL,
	cardExpiration CHAR(4) NOT NULL,
	cardCCV CHAR(3) NOT NULL,
	billingAddress VARCHAR(80) NOT NULL,
	b_country VARCHAR(20) NOT NULL,
	b_stateProvince CHAR(2) NOT NULL,
	b_zipPostal VARCHAR(10) NOT NULL,
	b_city VARCHAR(20) NOT NULL,
	b_streetName VARCHAR(20) NOT NULL,
	b_streetNumber INTEGER NOT NULL,
	b_aptNumber INTEGER,
	shippingAddress VARCHAR(80) NOT NULL,
	s_country VARCHAR(20) NOT NULL,
	s_stateProvince CHAR(2) NOT NULL,
	s_zipPostal VARCHAR(10) NOT NULL,
	s_city VARCHAR(20) NOT NULL,
	s_streetName VARCHAR(20) NOT NULL,
	s_streetNumber INTEGER NOT NULL,
	s_aptNumber INTEGER,
	PRIMARY KEY (order_ID)
);

CREATE TABLE ShippingOption (
	shipping_ID INTEGER,
	shipMethod VARCHAR(10) NOT NULL,
	shipPrice CURRENCY NOT NULL,
	PRIMARY KEY (shipping_ID)
);

CREATE TABLE TaxOption (
	taxCountry VARCHAR(20),
	taxState CHAR(2),
	taxRate DECIMAL(0,2),
	PRIMARY KEY (taxCountry, taxState)
);

CREATE TABLE ShoppingCart (
	cart_ID INTEGER,
	quantity INTEGER,
	PRIMARY KEY (cart_ID)
);

CREATE TABLE Reviews (
	dateReviewed DATETIME,
	overallRating INTEGER [1..5],
	review VARCHAR(255)
	PRIMARY KEY ( , )
);

CREATE TABLE Stores (
	inventory INTEGER,
	PRIMARY KEY ( , )
);