USE voyago;

-- Stored Procedure to insert data into Publisher
DELIMITER $$
CREATE PROCEDURE InsertCountry(IN country VARCHAR(100))
BEGIN
	INSERT INTO country(country)
	VALUES (country);
END$$
DELIMITER ;

-- Stored Procedure to insert data into langauge, destination and currency
DELIMITER $$
CREATE PROCEDURE InsertCur(IN Currency VARCHAR(100))
BEGIN
	INSERT INTO currency(currency)
	VALUES (currency);
END$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE InsertDestination(IN destination VARCHAR(200), id_ctry INT)
BEGIN
	INSERT INTO destination(id_ctry, id_lang, id_faith, id_clmt, id_transp, id_crncy, id_hol_ty)
	VALUES (city, id_ctry, id_lang, id_faith, id_clmt, id_transp, id_crncy, id_hol_ty );
END$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE InsertLanguage(IN language VARCHAR(200), id_ctry INT)
BEGIN
	INSERT INTO city(city, id_ctry)
	VALUES (city, id_ctry);
END$$
DELIMITER ;

