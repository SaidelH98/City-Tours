BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');



INSERT INTO landmarks (name, city, country, venue_type, image, description, address) VALUES ('The Colosseum', 'Rome', 'Italy', 'Museum', 'https://images.unsplash.com/photo-1552832230-c0197dd311b5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y29sb3NzZXVtfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60', 'Packed with ancient history, the Colosseum is one of the most recognized landmarks and ruins in Rome. Dating back over 2,000 years it was once the ground for legendary gladiator contests that would entertain the masses.', 'Piazza del Colosseo, 1, 00184 Roma RM, Italy');
INSERT INTO landmarks (name, city, country, venue_type, image, description, address) VALUES ('Roman Forum', 'Rome', 'Italy', 'Museum', 'https://images.pexels.com/photos/17057107/pexels-photo-17057107/free-photo-of-view-of-the-roman-forum-in-rome-italy.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 'The Roman Forum is a rectangular forum surrounded by the ruins of several important ancient government buildings at the center of the city of Rome. Citizens of the ancient city referred to this space, originally a marketplace, as the Forum Magnum, or simply the Forum.', 'Via della Salara Vecchia, 5/6, 00186 Roma RM, Italy');
INSERT INTO landmarks (name, city, country, venue_type, image, description, address) VALUES ('Sistine Chapel', 'Rome', 'Italy', 'Church', 'https://m.museivaticani.va/content/dam/museivaticani/immagini/collezioni/musei/cappella_sistina/00_00_Cappella_Sistina/_jcr_content/renditions/original.png', 'The Sistine Chapel is a chapel in the Apostolic Palace, the pope"s official residence in Vatican City. Originally known as the Cappella Magna, the chapel takes its name from Pope Sixtus IV, who had it built between 1473 and 1481.', '00120 Vatican City');
INSERT INTO landmarks (name, city, country, venue_type, image, description, address) VALUES ('St. Peter''s Basilica', 'Rome', 'Italy', 'Church', 'https://cdn.getyourguide.com/img/tour/634d4d773519a.jpeg/148.jpg', 'The Papal Basilica of Saint Peter in the Vatican, or simply Saint Peter"s Basilica, is a church built in the Renaissance style located in Vatican City, the papal enclave that is within the city of Rome, Italy.', 'Piazza San Pietro, 00120 Città del Vaticano, Vatican City');
INSERT INTO landmarks (name, city, country, venue_type, image, description, address) VALUES ('Piazza Navona', 'Rome', 'Italy', 'Plaza', 'https://images.pexels.com/photos/12268449/pexels-photo-12268449.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 'Piazza Navona is a public open space in Rome, Italy. It is built on the site of the Stadium of Domitian, built in the 1st century AD, and follows the form of the open space of the stadium. The ancient Romans went there to watch the agones, and hence it was known as "Circus Agonalis".', 'Piazza Navona, 00186 Roma RM, Italy');
INSERT INTO landmarks (name, city, country, venue_type, image, description, address) VALUES ('Piazza del Popolo', 'Rome', 'Italy', 'Plaza', 'https://www.italia.it/content/dam/tdh/en/destinations/lazio/roma/piazza-del-popolo/media/2480X1000_piazza_del_popolo_destination.jpg', 'Piazza del Popolo is a large urban square in Rome. The name in modern Italian literally means "People"s Square", but historically it derives from the poplars after which the church of Santa Maria del Popolo, in the northeast corner of the piazza, takes its name.', 'Piazza del Popolo, 00187 Roma RM, Italy');
INSERT INTO landmarks (name, city, country, venue_type, image, description, address) VALUES ('Baths of Caracalla', 'Rome', 'Italy', 'Museum', 'https://www.wantedinrome.com/i/preview/storage/uploads/2019/04/baths-of-caracalla-rome.jpg', 'The Baths of Caracalla in Rome, Italy, were the city"s second largest Roman public baths, or thermae, after the Baths of Diocletian. The baths were likely built between AD 212 and 216/217, during the reigns of emperors Septimius Severus and Caracalla.', 'Viale delle Terme di Caracalla, 00153 Roma RM, Italy');
INSERT INTO landmarks (name, city, country, venue_type, image, description, address) VALUES ('Trevi Fountain', 'Rome', 'Italy', 'Monument', 'https://res.cloudinary.com/enchanting/q_70,f_auto,w_600,h_400,c_fit/ymt-web/2023/01/600x400-levi-fountain-rome-body.jpg', 'The Trevi Fountain is an 18th-century fountain in the Trevi district in Rome, Italy, designed by Italian architect Nicola Salvi and completed by Giuseppe Pannini in 1762 and several others.', 'Piazza di Trevi, 00187 Roma RM, Italy');
INSERT INTO landmarks (name, city, country, venue_type, image, description, address) VALUES ('Spanish Steps', 'Rome', 'Italy', 'Monument', 'https://images.unsplash.com/photo-1636804907035-8ae6360f1d4f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80', 'The Spanish Steps in Rome, Italy, climb a steep slope between the Piazza di Spagna at the base and Piazza Trinità dei Monti, dominated by the Trinità dei Monti church, at the top.', 'Piazza di Spagna, 00187 Roma RM, Italy');

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
COMMIT TRANSACTION;
