create database voyago;
use voyago;

CREATE TABLE country (
    country_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    country VARCHAR(100) NOT NULL
);

CREATE TABLE language (
    language_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    language VARCHAR(100) NOT NULL
);

CREATE TABLE type (
    type_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    type VARCHAR(100) NOT NULL
);

CREATE TABLE transport (
    transport_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    transport VARCHAR(100) NOT NULL
);

CREATE TABLE currency (
    currency_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    currency VARCHAR(100) NOT NULL
);

CREATE TABLE climate (
    climate_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    climate VARCHAR(100) NOT NULL
);

CREATE TABLE religion (
    religion_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    religion VARCHAR(100) NOT NULL
);

CREATE TABLE location (
    city_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    city VARCHAR(100) NOT NULL,
    country_id INT NOT NULL,
    language_id INT NOT NULL,
    type_id INT NOT NULL,
    transport_id INT NOT NULL,
    currency_id INT NOT NULL,
    climate_id INT NOT NULL,
    religion_id INT NOT NULL,
    description_text TEXT NOT NULL,
    activity_description_text TEXT NOT NULL,
    traveller_tip_text TEXT,
    CONSTRAINT fk_country FOREIGN KEY (country_id) REFERENCES country(country_id),
    CONSTRAINT fk_language FOREIGN KEY (language_id) REFERENCES language(language_id),
    CONSTRAINT fk_type FOREIGN KEY (type_id) REFERENCES type(type_id),
    CONSTRAINT fk_transport FOREIGN KEY (transport_id) REFERENCES transport(transport_id),
    CONSTRAINT fk_currency FOREIGN KEY (currency_id) REFERENCES currency(currency_id),
    CONSTRAINT fk_climate FOREIGN KEY (climate_id) REFERENCES climate(climate_id),
    CONSTRAINT fk_religion FOREIGN KEY (religion_id) REFERENCES religion(religion_id)
);

CREATE TABLE quarters (
	quarter_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    quarter_title VARCHAR(100) NOT NULL
    );
    
CREATE TABLE year_quarter_info (
    quarter_id INT NOT NULL,
    city_id INT NOT NULL,
    average_temperature VARCHAR(50) NOT NULL,
    CONSTRAINT fk_quarters FOREIGN KEY (quarter_id) REFERENCES quarters(quarter_id),
    CONSTRAINT fk_location FOREIGN KEY (city_id) REFERENCES location(city_id)
);


CREATE TABLE image_category (
	image_category_id INT NOT NULL auto_increment PRIMARY KEY,
    image_category VARCHAR(50) NOT NULL,
    image_description TEXT NULL
);

CREATE TABLE image (
    image_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    city_id INT NOT NULL,
    image_category_id INT NOT NULL,
    image_path VARCHAR(100) NOT NULL,
    image_alt VARCHAR(100) NOT NULL,
    CONSTRAINT fk_location_i FOREIGN KEY (city_id) REFERENCES location(city_id),
    CONSTRAINT fk_image_category FOREIGN KEY (image_category_id) REFERENCES image_category(image_category_id)
);
