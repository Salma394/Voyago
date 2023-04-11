USE voyago;

-- inserting values into the below tables
INSERT INTO type(type)
values ('Beach'), ('City'), ('Adventure'), ('Active'); 

INSERT INTO predominant_faith(faith)
values ('Christianity'), ('Islam'), ('Shintoism'), ('Buddhism'), ('Hinduism'); 

INSERT INTO climate(climate)
values ('Tropical'), ('Mediterranean'), ('Sub tropical'), ('Continental'), ('Arid');

INSERT INTO transport(transport)
values ('Bus'), ('Walking'), ('Bike'), ('Train'), ('Rental Car'), ('Scooter'), ('Taxi'), ('Tuk-tuk'), ('Shuttle');

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
CALL InsertCountry ('New Zealand');
CALL InsertCountry ('Australia');
CALL InsertCountry ('Thailand');
CALL InsertCountry ('Canada');
CALL InsertCountry ('Ireland');
CALL InsertCountry ('Indonesia');
CALL InsertCountry ('Brazil');
CALL InsertCountry ('Iceland');

-- Currency
CALL InsertCurrency ('Mexican Peso');
CALL InsertCurrency ('Maldivian rufiyaa');
CALL InsertCurrency ('Seychelles rupees');
CALL InsertCurrency ('Pacific Franc');
CALL InsertCurrency ('Euro');
CALL InsertCurrency ('Argentinian Peso');
CALL InsertCurrency ('US Dollar');
CALL InsertCurrency ('South African rand');
CALL InsertCurrency ('Japanese Yen');
CALL InsertCurrency ('Icelandic Krona');
CALL InsertCurrency ('Australia Dollar');
CALL InsertCurrency ('Thai Baht');
CALL InsertCurrency ('Canadian Dollar');
CALL InsertCurrency ('Indonesian Rupiah');
CALL InsertCurrency ('Brazilian Real');

-- Language
CALL InsertLanguage ('Spanish');
CALL InsertLanguage ('Dhivehi');
CALL InsertLanguage ('French');
CALL InsertLanguage ('Tahitian');
CALL InsertLanguage ('Greek');
CALL InsertLanguage ('English');
CALL InsertLanguage ('Japanese');
CALL InsertLanguage ('Icelandic');
CALL InsertLanguage ('Thai');
CALL InsertLanguage ('Indonesian');
CALL InsertLanguage ('Portuguese');
CALL InsertLanguage ('Balinese');

-- Destination 
Call InsertDestination ('Cancun');
Call InsertDestination ('Como Cocai Island');
Call InsertDestination ('Anse Source' 'd''Argent');
Call InsertDestination ('Bora Bora');
Call InsertDestination ('Mykonos');
Call InsertDestination ('Buenos Aires');
Call InsertDestination ('New York');
Call InsertDestination ('Paris');
Call InsertDestination ('Johannesburg');
Call InsertDestination ('Tokyo');
Call InsertDestination ('Cape Town');
Call InsertDestination ('Reykjavik');
Call InsertDestination ('Queenstown');
Call InsertDestination ('Sydney');
Call InsertDestination ('Bangkok');
Call InsertDestination ('Banff');
Call InsertDestination ('Cairns');
Call InsertDestination ('Queenstown');
Call InsertDestination ('Moab');
Call InsertDestination ('Bali');
Call InsertDestination ('Rio de Janeiro');
Call InsertDestination ('Cancun');
Call InsertDestination ('Chiang Mai');

