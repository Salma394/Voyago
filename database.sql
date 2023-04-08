CREATE DATABASE voyago;
-- creating the voyago database
USE voyago;

CREATE TABLE Country
(id_ctry INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
country VARCHAR (100) NOT NULL
);

CREATE TABLE Language
(id_lang INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
language Varchar (100) NOT NULL
);

CREATE TABLE Predominant_faith
(id_faith INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
predominant_faith Varchar (100) NOT NULL
);


CREATE TABLE Climate
(id_clmt INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
climate Varchar (100) NOT NULL
);


CREATE TABLE Recommended_transport
(id_transp INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
recommended_transport Varchar (100) NOT NULL
);


CREATE TABLE Currency
(id_crncy INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
currency Varchar (100) NOT NULL
);


CREATE TABLE holiday_type
(id_hol_ty INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
holiday_type Varchar (100) NOT NULL
);


CREATE TABLE Destination
(id_dest INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
destination VARCHAR(100) NOT NULL,
id_ctry INT NOT NULL,
id_lang INT NOT NULL,
id_faith INT NOT NULL,
id_clmt INT NOT NULL,
id_transp INT NOT NULL,
id_crncy INT NOT NULL, 
id_hol_ty INT NOT NULL
);


CREATE TABLE language_destination
(id_lang INT NOT NULL,
id_dest INT NOT NULL,
FOREIGN KEY (id_lang) REFERENCES language(id_lang),
FOREIGN KEY (id_dest) REFERENCES destination(id_dest)
);
-- creating a joining table as language to destination is a many to many relationship