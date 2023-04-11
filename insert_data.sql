USE voyago;

-- Stored Procedure to insert data into Country
DELIMITER $$
CREATE PROCEDURE InsertCountry(IN country VARCHAR(100))
BEGIN
	INSERT INTO country(country)
	VALUES (country);
END$$
DELIMITER ;

-- Stored Procedure to insert data into langauge, destination and currency
DELIMITER $$
CREATE PROCEDURE InsertCurrency(IN currency VARCHAR(100))
BEGIN
	INSERT INTO currency(currency)
	VALUES (currency);
END$$
DELIMITER ;


DELIMITER $$
CREATE PROCEDURE InsertDestination(IN destination VARCHAR(200), id_country INT)
BEGIN
	INSERT INTO destination( id_country, id_language, id_faith, id_climate, id_transport, id_currency, id_holiday_type)
	VALUES (city, id_country, id_language, id_faith, id_climate, id_transport, id_currency, id_holiday_type );
END$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE InsertLanguage(IN language VARCHAR(200), id_country INT)
BEGIN
	INSERT INTO city(city, id_country)
	VALUES (city, id_country);
END$$
DELIMITER ;

