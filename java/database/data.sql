BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');

INSERT INTO city (city_name, city_desc, city_img) VALUES ('Rome', 'description', 'https://images.unsplash.com/photo-1552832230-c0197dd311b5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y29sb3NzZXVtfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60');
INSERT INTO city (city_name, city_desc, city_img) VALUES ('Barcelona', 'description', 'image');
INSERT INTO city (city_name, city_desc, city_img) VALUES ('Zurich', 'description', 'image');

INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('The Colosseum', 1, 'Italy', 'Museum', 'https://images.unsplash.com/photo-1552832230-c0197dd311b5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y29sb3NzZXVtfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60', 'Packed with ancient history, the Colosseum is one of the most recognized landmarks and ruins in Rome. Dating back over 2,000 years it was once the ground for legendary gladiator contests that would entertain the masses.', 'Piazza del Colosseo, 1, 00184 Roma RM, Italy');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Roman Forum', 1, 'Italy', 'Museum', 'https://images.pexels.com/photos/17057107/pexels-photo-17057107/free-photo-of-view-of-the-roman-forum-in-rome-italy.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 'The Roman Forum is a rectangular forum surrounded by the ruins of several important ancient government buildings at the center of the city of Rome. Citizens of the ancient city referred to this space, originally a marketplace, as the Forum Magnum, or simply the Forum.', 'Via della Salara Vecchia, 5/6, 00186 Roma RM, Italy');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Sistine Chapel', 1, 'Italy', 'Church', 'https://m.museivaticani.va/content/dam/museivaticani/immagini/collezioni/musei/cappella_sistina/00_00_Cappella_Sistina/_jcr_content/renditions/original.png', 'The Sistine Chapel is a chapel in the Apostolic Palace, the pope"s official residence in Vatican City. Originally known as the Cappella Magna, the chapel takes its name from Pope Sixtus IV, who had it built between 1473 and 1481.', '00120 Vatican City');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('St. Peter''s Basilica', 1, 'Italy', 'Church', 'https://cdn.getyourguide.com/img/tour/634d4d773519a.jpeg/148.jpg', 'The Papal Basilica of Saint Peter in the Vatican, or simply Saint Peter"s Basilica, is a church built in the Renaissance style located in Vatican City, the papal enclave that is within the city of Rome, Italy.', 'Piazza San Pietro, 00120 Città del Vaticano, Vatican City');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Piazza Navona', 1, 'Italy', 'Plaza', 'https://images.pexels.com/photos/12268449/pexels-photo-12268449.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 'Piazza Navona is a public open space in Rome, Italy. It is built on the site of the Stadium of Domitian, built in the 1st century AD, and follows the form of the open space of the stadium. The ancient Romans went there to watch the agones, and hence it was known as "Circus Agonalis".', 'Piazza Navona, 00186 Roma RM, Italy');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Piazza del Popolo', 1, 'Italy', 'Plaza', 'https://www.italia.it/content/dam/tdh/en/destinations/lazio/roma/piazza-del-popolo/media/2480X1000_piazza_del_popolo_destination.jpg', 'Piazza del Popolo is a large urban square in Rome. The name in modern Italian literally means "People"s Square", but historically it derives from the poplars after which the church of Santa Maria del Popolo, in the northeast corner of the piazza, takes its name.', 'Piazza del Popolo, 00187 Roma RM, Italy');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Baths of Caracalla', 1, 'Italy', 'Museum', 'https://www.wantedinrome.com/i/preview/storage/uploads/2019/04/baths-of-caracalla-rome.jpg', 'The Baths of Caracalla in Rome, Italy, were the city"s second largest Roman public baths, or thermae, after the Baths of Diocletian. The baths were likely built between AD 212 and 216/217, during the reigns of emperors Septimius Severus and Caracalla.', 'Viale delle Terme di Caracalla, 00153 Roma RM, Italy');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Trevi Fountain', 1, 'Italy', 'Monument', 'https://res.cloudinary.com/enchanting/q_70,f_auto,w_600,h_400,c_fit/ymt-web/2023/01/600x400-levi-fountain-rome-body.jpg', 'The Trevi Fountain is an 18th-century fountain in the Trevi district in Rome, Italy, designed by Italian architect Nicola Salvi and completed by Giuseppe Pannini in 1762 and several others.', 'Piazza di Trevi, 00187 Roma RM, Italy');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Spanish Steps', 1, 'Italy', 'Monument', 'https://images.unsplash.com/photo-1636804907035-8ae6360f1d4f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80', 'The Spanish Steps in Rome, Italy, climb a steep slope between the Piazza di Spagna at the base and Piazza Trinità dei Monti, dominated by the Trinità dei Monti church, at the top.', 'Piazza di Spagna, 00187 Roma RM, Italy');

INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('La Sagrada Familia', 2, 'Spain', 'Church', 'https://media.istockphoto.com/id/1130443789/photo/sagrada-familia-basilica-in-barcelona.jpg?s=612x612&w=0&k=20&c=bw6WVHnaiwXxAFllDVujJanDQ3eayUt5ZQf8Ij75jVk=', 'The Basílica i Temple Expiatori de la Sagrada Família, shortened as the Sagrada Família, is an unfinished church in the Eixample district of Barcelona, Catalonia, Spain. It is the largest unfinished Catholic church in the world', 'C/ de Mallorca, 401, 08013 Barcelona, Spain');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Cathedral of Barcelona', 2, 'Spain', 'Church', 'https://a.cdn-hotels.com/gdcs/production172/d1185/1a0e1853-0ef0-4d17-b643-6bc98e49c867.jpg', 'The Cathedral of the Holy Cross and Saint Eulalia, also known as Barcelona Cathedral, is the Gothic cathedral and seat of the Archbishop of Barcelona, Catalonia, Spain. The cathedral was constructed from the thirteenth to fifteenth centuries, with the principal work done in the fourteenth century.', 'Pla de la Seu, s/n, 08002 Barcelona, Spain');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Picasso Museum', 2, 'Spain', 'Museum', 'https://www.travelforbliss.com/wp-content/uploads/2021/06/IMG_0966.jpg', 'The Museu Picasso is an art museum in Barcelona, in Catalonia, Spain. It houses an extensive collection of artworks by the twentieth-century Spanish artist Pablo Picasso, with a total of 4251 of his works.', 'C/ de Montcada, 15-23, 08003 Barcelona, Spain');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Museu Nacional d''Art de Catalunya', 2, 'Spain', 'Museum', 'https://cdn-imgix.headout.com/mircobrands-content/image/51ea3cf2a3306830b0005424dbc0e3bb-AdobeStock_467226755.jpeg', 'The Museu Nacional d''Art de Catalunya, abbreviated as MNAC, is a museum of Catalan visual art located in Barcelona, Catalonia, Spain.', 'Palau Nacional, Parc de Montjuïc, s/n, 08038 Barcelona, Spain');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Park Guell', 2, 'Spain', 'Park', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/73206731.jpg?k=1c528bf33d1226c704ed157b84b3b0d0255eceb92df62fc33e892c6c02793fc5&o=&hp=1', 'Park Güell is a privatized park system composed of gardens and architectural elements located on Carmel Hill, in Barcelona, Catalonia, Spain. Carmel Hill belongs to the mountain range of Collserola – the Parc del Carmel is located on the northern face.', '08024 Barcelona, Spain');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Ciutadella Park', 2, 'Spain', 'Park', 'https://media.cntraveler.com/photos/5a7df721b8ebbd42565cf7c9/16:9/w_2560,c_limit/Parc-de-la-Ciutadella__2018_GettyImages-896371664.jpg', 'The Parc de la Ciutadella is a park on the northeastern edge of Ciutat Vella, Barcelona, Catalonia, Spain. For decades following its creation in the mid-19th century, this park was the city''s only green space.', 'Passeig de Picasso, 21, 08003 Barcelona, Spain');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Spotify Camp Nou', 2, 'Spain', 'Stadium', 'https://www.fcbarcelona.com/photo-resources/2022/07/01/6e74c236-1470-4388-b199-53f5ba87fb36/_GP17665.jpg?width=1200&height=750', 'Camp Nou, branded as Spotify Camp Nou for sponsorship reasons, is the home of La Liga club FC Barcelona since its completion in 1957. With a current seating capacity of 99,354, it is the stadium with the largest capacity in Spain and Europe, and the third largest football stadium in the world.', 'C/ d''Arístides Maillol, 12, 08028 Barcelona, Spain');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Columbus Monument', 2, 'Spain', 'Monument', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMOZSb8QwyMRlVduMIYxKMD12winbDZWHXKA&usqp=CAU', 'The Columbus Monument is a 60 m tall monument to Christopher Columbus at the lower end of La Rambla, Barcelona, Catalonia, Spain. It was constructed for the Exposición Universal de Barcelona in honor of Columbus'' first voyage to the Americas.', 'Plaça Portal de la Pau, s/n, 08001 Barcelona, Spain');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Mercado de la Boqueria', 2, 'Spain', 'Plaza', 'https://suitelife.com/wp-content/uploads/2015/12/la-boqueria.jpg', 'The Mercat de Sant Josep de la Boqueria, usually simply referred to as La Boqueria, is a large public market in the Ciutat Vella district of Barcelona, Catalonia, Spain, and one of the city''s foremost tourist landmarks, with an entrance from La Rambla, not far from the Liceu, Barcelona''s opera house.', 'La Rambla, 91, 08001 Barcelona, Spain');

INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (1, 'Sunday', '9', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (1, 'Monday', '9', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (1, 'Tuesday', '9', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (1, 'Wednesday', '9', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (1, 'Thursday', '9', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (1, 'Friday', '9', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (1, 'Saturday', '9', '19');

INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (2, 'Sunday', '9', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (2, 'Monday', '9', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (2, 'Tuesday', '9', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (2, 'Wednesday', '9', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (2, 'Thursday', '9', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (2, 'Friday', '9', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (2, 'Saturday', '9', '19');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (3, 'Sunday', '9', '16');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (3, 'Monday', '9', '16');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (3, 'Tuesday', '9', '16');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (3, 'Wednesday', '9', '16');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (3, 'Thursday', '9', '16');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (3, 'Friday', '9', '16');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (3, 'Saturday', '9', '16');



INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (4, 'Monday', '7', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (4, 'Tuesday', '7', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (4, 'Wednesday', '7', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (4, 'Thursday', '7', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (4, 'Friday', '7', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (4, 'Saturday', '7', '18');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (5, 'Sunday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (5, 'Monday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (5, 'Tuesday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (5, 'Wednesday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (5, 'Thursday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (5, 'Friday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (5, 'Saturday', '0', '24');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (6, 'Sunday', '9', '21');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (6, 'Monday', '9', '21');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (6, 'Tuesday', '9', '21');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (6, 'Wednesday', '9', '21');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (6, 'Thursday', '9', '21');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (6, 'Friday', '9', '21');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (6, 'Saturday', '9', '21');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (7, 'Sunday', '9', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (7, 'Monday', '9', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (7, 'Tuesday', '9', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (7, 'Wednesday', '9', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (7, 'Thursday', '9', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (7, 'Friday', '9', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (7, 'Saturday', '9', '17');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (8, 'Sunday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (8, 'Monday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (8, 'Tuesday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (8, 'Wednesday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (8, 'Thursday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (8, 'Friday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (8, 'Saturday', '0', '24');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (9, 'Sunday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (9, 'Monday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (9, 'Tuesday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (9, 'Wednesday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (9, 'Thursday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (9, 'Friday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (9, 'Saturday', '0', '24');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (10, 'Sunday', '11', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (10, 'Monday', '9', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (10, 'Tuesday', '9', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (10, 'Wednesday', '9', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (10, 'Thursday', '9', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (10, 'Friday', '9', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (10, 'Saturday', '9', '19');

INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (11, 'Sunday', '8', '20');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (11, 'Monday', '8', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (11, 'Tuesday', '8', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (11, 'Wednesday', '8', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (11, 'Thursday', '8', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (11, 'Friday', '8', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (11, 'Saturday', '8', '20');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (12, 'Sunday', '9', '20');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (12, 'Tuesday', '9', '20');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (12, 'Wednesday', '9', '20');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (12, 'Thursday', '9', '20');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (12, 'Friday', '9', '20');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (12, 'Saturday', '9', '20');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (12, 'Sunday', '10', '15');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (13, 'Tuesday', '10', '20');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (13, 'Wednesday', '10', '20');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (13, 'Thursday', '10', '20');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (13, 'Friday', '10', '20');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (13, 'Saturday', '10', '20');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (14, 'Sunday', '10', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (14, 'Monday', '10', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (14, 'Tuesday', '10', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (14, 'Wednesday', '10', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (14, 'Thursday', '10', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (14, 'Friday', '10', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (14, 'Saturday', '10', '19');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (15, 'Sunday', '10', '22');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (15, 'Monday', '10', '22');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (15, 'Tuesday', '10', '22');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (15, 'Wednesday', '10', '22');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (15, 'Thursday', '10', '22');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (15, 'Friday', '10', '22');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (15, 'Saturday', '10', '22');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (16, 'Sunday', '10', '15');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (16, 'Monday', '10', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (16, 'Tuesday', '10', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (16, 'Wednesday', '10', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (16, 'Thursday', '10', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (16, 'Friday', '10', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (16, 'Saturday', '10', '15');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (17, 'Sunday', '9', '14');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (17, 'Monday', '9', '14');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (17, 'Tuesday', '9', '14');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (17, 'Wednesday', '9', '14');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (17, 'Thursday', '9', '14');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (17, 'Friday', '9', '14');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (17, 'Saturday', '9', '14');



INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (18, 'Monday', '8', '20');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (18, 'Wednesday', '8', '20');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (18, 'Thursday', '8', '20');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (18, 'Friday', '8', '20');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (18, 'Saturday', '8', '20');
COMMIT TRANSACTION;
