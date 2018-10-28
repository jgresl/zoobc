
CREATE TABLE User (
	User_ID INTEGER,
	userEmail VARCHAR(30),
	userPassWord VARCHAR(20),
	userType VARCHAR(10),
	firstName VARCHAR(20),
	lastName VARCHAR(20),
	phoneNumber INTEGER,
	address VARCHAR(80),
	country VARCHAR(20),
	stateProvince CHAR(2),
	zipPostal VARCHAR(10),
	city VARCHAR(20),
	streetName VARCHAR(20),
	streetNumber INTEGER,
	aptNumber INTEGER,
	PRIMARY KEY User_ID,
	FOREIGN KEY cart_ID REFERENCES ShoppingCart(cart_ID)
{

