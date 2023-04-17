INSERT INTO country (country) VALUES ('United States'), ('France'), ('Japan'), ('Brazil');
INSERT INTO language (language) VALUES ('English'), ('French'), ('Japanese'), ('Portuguese');
INSERT INTO type (type) VALUES ('City'), ('Beach'), ('Mountain'), ('Historic');
INSERT INTO transport (transport) VALUES ('Car'), ('Bus'), ('Train'), ('Bike');
INSERT INTO currency (currency) VALUES ('USD'), ('EUR'), ('JPY'), ('BRL');
INSERT INTO climate (climate) VALUES ('Tropical'), ('Temperate'), ('Arctic'), ('Desert');
INSERT INTO religion (religion) VALUES ('Christianity'), ('Islam'), ('Buddhism'), ('Hinduism');
INSERT INTO image_category (image_category) VALUES ('Main'), ('Attraction'), ('Accommodation');
INSERT INTO quarters (quarter_title) VALUES ('January to March'), ('April to June'), ('July to September'), ('October to December');

INSERT INTO location (city, country_id, language_id, type_id, transport_id, currency_id, climate_id, religion_id, description_text, activity_description_text, traveller_tip_text)
VALUES ('New York', 1, 1, 1, 1, 1, 2, 1, 'New York is a bustling city with a lot of history and culture.', 'There are many museums and theaters to visit in New York.', 'Make sure to bring comfortable shoes to walk around the city.'),
('Paris', 2, 2, 1, 2, 2, 2, 1, 'Paris is known for its art and architecture.', 'The Eiffel Tower and the Louvre Museum are must-see attractions.', 'Try the croissants and macarons.'),
('Tokyo', 3, 3, 1, 3, 3, 1, 3, 'Tokyo is a modern metropolis with a unique culture.', 'Visit the Imperial Palace and the Meiji Shrine.', 'Learn some basic Japanese phrases before your trip.'),
('Rio de Janeiro', 4, 4, 2, 4, 4, 1, 1, 'Rio de Janeiro is a city known for its beaches and Carnival celebration.', 'Take a cable car to the top of Sugarloaf Mountain.', 'Be careful with your belongings in crowded areas.');

INSERT INTO year_quarter_info (city_id, quarter_id, average_temperature) VALUES
(1, 1, 10),
(1, 2, 15),
(1, 3, 20),
(1, 4, 5),
(2, 1, 10),
(2, 2, 15),
(2, 3, 20),
(2, 4, 5),
(3, 1, 10),
(3, 2, 15),
(3, 3, 20),
(3, 4, 5),
(4, 1, 10),
(4, 2, 15),
(4, 3, 20),
(4, 4, 5);

INSERT INTO image (city_id, image_category_id, image_path, image_alt)
VALUES (1, 2, 'newyork-landmarks.jpg', 'Statue of Liberty and Empire State Building'),
(1, 3, 'newyork-hotel.jpg', 'Times Square Hotel'),

(2, 1, 'paris-main.jpg', 'The City of Paris'),
(2, 2, 'paris-attraction.jpg', 'Eiffel Tower'),
(2, 2, 'paris-attraction-2.jpg', 'Notre-Dame Cathedral'),
(2, 3, 'paris-hotel.jpg', 'Hotel lobby'),
(2, 3, 'paris-hotel.jpg', 'Paris Hotel'),

(3, 1, 'tokyo-main.jpg', 'Tokyo Tower and Senso-ji Temple'),
(3, 2, 'tokyo-attraction.jpg', 'Senso-ji Temple'),
(3, 2, 'tokyo-landmarks.jpg', 'Tokyo Tower'),
(3, 2, 'tokyo-food.jpg', 'Sushi and ramen'),
(3, 3, 'tokyo-hotel.jpg', 'Tokyo Hotel'),

(4, 2, 'riodejaneiro-landmarks.jpg', 'Landmarks');
