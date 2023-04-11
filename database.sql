CREATE DATABASE voyago;
-- creating the voyago database
USE voyago;

CREATE TABLE country
(id_country INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
country VARCHAR (100) NOT NULL
);

CREATE TABLE language
(id_language INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
language VARCHAR (100) NOT NULL
);

CREATE TABLE faith
(id_faith INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
predominant_faith VARCHAR (100) NOT NULL
);


CREATE TABLE climate
(id_climate INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
climate VARCHAR (100) NOT NULL
);


CREATE TABLE transport
(id_transport INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
recommended_transport VARCHAR (100) NOT NULL
);


CREATE TABLE currency
(id_currency INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
currency VARCHAR (100) NOT NULL
);


CREATE TABLE type
(id_type INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
type VARCHAR (100) NOT NULL
);


CREATE TABLE destination
(id_destination INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
destination VARCHAR(100) NOT NULL,
id_country VARCHAR (100) NOT NULL,
id_language VARCHAR (100) NOT NULL,
id_faith VARCHAR (100) NOT NULL,
id_climate VARCHAR (100) NOT NULL,
id_transport VARCHAR (100) NOT NULL,
id_currency VARCHAR (100) NOT NULL, 
id_type VARCHAR (100) NOT NULL
);


CREATE TABLE language_destination
(id_language INT NOT NULL,
id_destination INT NOT NULL,
FOREIGN KEY (id_language) REFERENCES language(id_language),
FOREIGN KEY (id_destination) REFERENCES destination(id_destination)
);
-- creating a joining table as language to destination is a many to many relationship