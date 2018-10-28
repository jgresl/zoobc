DROP TABLE IF EXISTS UserAccount;
DROP TABLE IF EXISTS Animal;


CREATE TABLE User (
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








