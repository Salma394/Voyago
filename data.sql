USE voyago;

-- inserting values into the below tables
INSERT INTO holiday_type(holiday_type)
values ('Beach'), ('City break'), ('Adventure'), ('Active'); 

INSERT INTO predominant_faith(predominant_faith)
values ('Christianity'), ('Islam'), ('Shintoism'), ('Buddhism'); 

INSERT INTO climate(climate)
values ('Tropical'), ('Mediterranean'), ('Sub tropical'), ('Continental');

INSERT INTO recommended_transport(recommended_transport)
values ('Bus'), ('Walking'), ('Bike'), ('Train'), ('Car rental');


-- Inserts using Stored Procedures
-- Countries
CALL InsertCountry('Mexico');
CALL InsertCountry('Maldives');
CALL InsertCountry('Seychelles');
CALL InsertCountry('French Polynesia');
CALL InsertCountry('Greece');
CALL InsertCountry('Argentina');
CALL InsertCountry('USA');
CALL InsertCountry('France');
CALL InsertCountry('South Africa');
CALL InsertCountry('Japan');

-- Currency
CALL InsertCurrency ('');
CALL InsertCurrency ('');
CALL InsertCurrency ('');
CALL InsertCurrency ('');
CALL InsertCurrency ('');
CALL InsertCurrency ('');
CALL InsertCurrency ('');
CALL InsertCurrency ('');
CALL InsertCurrency ('');
CALL InsertCurrency ('');

-- Language
CALL InsertLanguage ('');
CALL InsertLanguage ('');
CALL InsertLanguage ('');
CALL InsertLanguage ('');
CALL InsertLanguage ('');
CALL InsertLanguage ('');
CALL InsertLanguage ('');
CALL InsertLanguage ('');