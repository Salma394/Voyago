INSERT INTO country (country) VALUES ('Japan'), ('Italy'), ('Canada'), ('Egypt');
INSERT INTO language (language) VALUES ('Japanese'), ('Italian'), ('English'), ('Arabic');
INSERT INTO type (type) VALUES ('City'), ('Beach'), ('Adventure'), ('Historic');
INSERT INTO transport (transport) VALUES ('Train'), ('Car'), ('Bike');
INSERT INTO currency (currency) VALUES ('Japanese Yen (JPY)'), ('Euro (EUR)'), ('Canadian Dollar (CAD)'), ('Egyptian Pound (EGP)');
INSERT INTO climate (climate) VALUES ('Tropical'), ('Mediterranean'), ('Oceanic '), ('Desert');
INSERT INTO religion (religion) VALUES ('Shintoism'), ('Christianity'), ('Islam');
INSERT INTO image_category (image_category) VALUES ('Main'), ('Attraction'), ('Accommodation');
INSERT INTO quarters (quarter_title) VALUES ('January to March'), ('April to June'), ('July to September'), ('October to December');

INSERT INTO location (city, country_id, language_id, type_id, transport_id, currency_id, climate_id, religion_id, description_text, activity_description_text, traveller_tip_text) VALUES
('Tokyo', 1, 1, 1, 1, 1, 1, 1,
"Tokyo, the bustling capital of Japan, is a must-visit destination for travelers seeking a unique and unforgettable experience. With its fascinating blend of ancient traditions and modern innovation, Tokyo offers an unparalleled opportunity to immerse oneself in Japanese culture.
Whether you're interested in shopping, entertainment, history, or simply soaking up the unique atmosphere of this incredible city, Tokyo is the perfect destination for an unforgettable holiday. With its efficient public transportation system, friendly locals, and endless opportunities for adventure, Tokyo is truly a must-visit destination for travelers from around the world.",
"From exploring historic temples to experiencing the latest technology, there is something for everyone in Tokyo.
One of the must-visit attractions is the iconic Tokyo Skytree, which offers breathtaking views of the city from its observation deck. For a taste of traditional Japanese culture, visit the stunning Sensoji Temple in the Asakusa neighborhood, or take a stroll through the beautiful Meiji Jingu Shrine in Shibuya.
For a taste of modern Tokyo, visit the bustling Shibuya Crossing, the busiest pedestrian crossing in the world. Technology enthusiasts will love the cutting-edge gadgets and gizmos at the Akihabara district, while fashionistas can indulge in shopping at the trendy Harajuku neighborhood.
Food lovers should head to the Tsukiji Fish Market, the largest seafood market in the world. And don't forget to relax in one of Tokyo's many public parks, such as Yoyogi Park or Shinjuku Gyoen.",
"When travelling to Japan, remember to carry cash as many places don't accept cards. Respect local customs and etiquette, such as removing your shoes in homes and some restaurants. Tipping isn't customary in Japan, as it's seen as part of the expected service, and you may have staff chase you down to return money if you leave some!"),
('Sicily', 2, 2, 2, 2, 2, 2, 2,
"Sicily is the largest island in the Mediterranean Sea, located off the southern coast of Italy. From stunning beaches and ancient ruins to mouth-watering cuisine and charming towns, Sicily offers something for every kind of traveller.
With its warm climate, friendly locals, and breathtaking scenery, Sicily is a must-visit destination for anyone travelling to Italy.",
"Sicily is a breathtakingly beautiful island with a rich history and culture.

One of the top attractions is the Valley of the Temples in Agrigento, where visitors can explore the impressive ancient Greek ruins. Another must-see is the charming town of Cefalù, home to a beautiful cathedral and picturesque streets.
For a taste of the island's stunning natural beauty, head to the beaches of Taormina, one of Sicily's most popular seaside resorts, or take a tour of Mount Etna, the largest active volcano in Europe.
Food lovers will delight in the local cuisine, which includes fresh seafood, arancini, and cannoli. And for a truly unforgettable experience, take a boat tour around the Aeolian Islands, a stunning archipelago located off the northern coast of Sicily.",
"When travelling to Italy, be aware of the local customs and dress appropriately when visiting religious sites. Carry cash as some shops and restaurants may not accept cards. Tipping isn't expected, but rounding up the bill or leaving a small amount for exceptional service is appreciated."),
('Vancouver', 3, 3, 3, 3, 3, 3, 2,
"Vancouver is a beautiful place located in the westernmost part of Canada, surrounded by stunning natural beauty. The city is known for its outdoor adventure activities, and it's a haven for hikers and adventure seekers. With its mild climate, towering mountains, and pristine forests, Vancouver offers some of the best hiking trails in North America.
With its incredible natural beauty, world-class hiking trails, and endless outdoor activities, Vancouver is a must-visit destination for any adventure seeker.",
"For winter sports lovers, Vancouver boasts some of the best skiing and snowboarding opportunities in North America. Grouse Mountain, Cypress Mountain, and Mount Seymour all offer world-class skiing and snowboarding slopes, with breathtaking views of the surrounding mountains and ocean.
During the summer months, visitors can enjoy a wide range of outdoor activities, including kayaking, stand-up paddleboarding, and mountain biking. Stanley Park, the city's largest urban park, offers endless opportunities for outdoor activities, with beautiful trails for walking, running, and biking.
Sports enthusiasts can also catch a game at one of Vancouver's many sports stadiums, including BC Place Stadium, Rogers Arena, and Nat Bailey Stadium. Vancouver is home to several sports teams, including the Vancouver Canucks hockey team and the Vancouver Whitecaps soccer team.",
"Remember to bring appropriate outdoor gear for the season and be prepared for all weather conditions. Also, don't forget to try the city's famous sushi and craft beer!"),
('Cairo', 4, 4, 4, 1, 4, 4, 3,
"Cairo is the capital and largest city of Egypt, located on the banks of the Nile River in the north of the country. With a rich history dating back to ancient times, Cairo is a bustling metropolis that offers a fascinating mix of traditional Islamic culture and modern urban life.",
"Cairo offers a wealth of activities and attractions for visitors. The Great Pyramid of Giza is a must-see attraction, as are the Sphinx and the Egyptian Museum. Islamic Cairo offers numerous historical mosques, including the Al-Azhar Mosque and the Sultan Hassan Mosque. The Khan El-Khalili market is a bustling bazaar that offers a glimpse into local life, while the Nile River provides a peaceful escape from the city's hustle and bustle. Finally, sampling Egyptian cuisine, such as koshary and ful medames, is a must-do activity while in Cairo.",
"When travelling in Cairo, it is important to dress conservatively, particularly for women. Negotiate prices before purchasing goods or services and be aware of pickpockets in crowded areas. Taxis are a good option for getting around, but ensure that the meter is used or negotiate the fare beforehand. Finally, drink only bottled water and be aware of the potential for scams aimed at tourists.");

INSERT INTO year_quarter_info (city_id, quarter_id, average_temperature) VALUES
(1, 1,  '9-12°C (48-54°F)'),
(1, 2, '18-24°C (64-75°F)'),
(1, 3, '25-30°C (77-86°F)'),
(1, 4, '14-20°C (57-68°F)'),
(2, 1, '12-17°C (54-63°F)'),
(2, 2, '18-24°C (64-75°F)'),
(2, 3, '26-30°C (79-86°F)'),
(2, 4, '15-20°C (59-68°F)'),
(3, 1, '2-9°C (36-48°F)'),
(3, 2, '12-18°C (54-64°F)'),
(3, 3, '17-23°C (63-73°F)'),
(3, 4, '6-10°C (43-50°F)'),
(4, 4, '8-24°C (46-75°F)'),
(4, 4, '16-35°C (61-95°F)'),
(4, 4, '22-40°C (72-104°F)'),
(4, 4, '11-30°C (52-86°F)');

INSERT INTO image (city_id, image_category_id, image_path, image_alt) VALUES
(1, 1, 'tokyo-main.jpg', 'Tokyo'),
(1, 2, 'tokyo-senso-ji.jpg', 'Senso-ji Temple'),
(1, 2, 'tokyo-tower.jpg', 'Tokyo Tower'),
(1, 2, 'tokyo-disney.jpg', 'Tokyo Disneyland'),
(1, 2, 'tokyo.jpg', 'Tokyo'),
(1, 3, 'tokyo-hotel-1.jpg', 'Hotel resort'),
(1, 3, 'tokyo-hotel-2.jpg', 'Hotel lobby'),
(1, 3, 'tokyo-hotel-3.jpg', 'Hotel room'),
(2, 1, 'sicily-beach2.jpg', 'Sicily beach'),
(2, 2, 'sicily-beach.jpg', 'Sicily'),
(2, 2, 'sicily-beach3.jpg', 'Sicily'),
(2, 2, 'sicily2.jpg', 'Sicily'),
(2, 3, 'sicily-hotel.jpg', 'Hotel'),
(2, 3, 'sicily-hotel2.jpg', 'Hotel'),
(2, 3, 'sicily-hotel3.jpg', 'Hotel'),
(2, 3, 'sicily-hotel4.jpg', 'Hotel'),
(3, 1, 'vancouver.jpg', 'Vancouver'),
(3, 2, 'vancouver2.jpg', 'Vancouver'),
(3, 2, 'vancouver3.jpg', 'Vancouver'),
(3, 2, 'vancouver4.jpg', 'Vancouver'),
(3, 2, 'vancouver5.jpg', 'Vancouver'),
(3, 3, 'vancouver6.jpg', 'Vancouver'),
(3, 3, 'vancouver7.jpg', 'Vancouver'),
(3, 3, 'vancouver8.jpg', 'Vancouver'),
(3, 3, 'vancouver9.jpg', 'Vancouver'),
(4, 1, 'cairo.jpg', 'Cairo'),
(4, 2, 'cairo2.jpg', 'Cairo'),
(4, 2, 'cairo3.jpg', 'Cairo'),
(4, 2, 'cairo4.jpg', 'Cairo'),
(4, 3, 'cairo5.jpg', 'Cairo'),
(4, 3, 'cairo6.jpg', 'Cairo'),
(4, 3, 'cairo7.jpg', 'Cairo'),
(4, 3, 'cairo8.jpg', 'Cairo');