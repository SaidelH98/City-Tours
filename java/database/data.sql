BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');



INSERT INTO landmarks (name, city, country, venue_type, image, description, address) VALUES ('The Colosseum', 'Rome', 'Italy', 'Museum', 'https://images.unsplash.com/photo-1552832230-c0197dd311b5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y29sb3NzZXVtfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60', 'Packed with ancient history, the Colosseum is one of the most recognized landmarks and ruins in Rome. Dating back over 2,000 years it was once the ground for legendary gladiator contests that would entertain the masses.', 'Piazza del Colosseo, 1, 00184 Roma RM, Italy');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (1, 'Sunday', '9:00', '19:00');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (1, 'Monday', '9:00', '19:00');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (1, 'Tuesday', '9:00', '19:00');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (1, 'Wednesday', '9:00', '19:00');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (1, 'Thursday', '9:00', '19:00');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (1, 'Friday', '9:00', '19:00');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (1, 'Saturday', '9:00', '19:00');
COMMIT TRANSACTION;
