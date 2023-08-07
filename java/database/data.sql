BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');



INSERT INTO landmarks (name, venue_type, day_of_operation, image, description) VALUES ('The Colosseum", 'Museum', 'Monday', 'java/landmark_images/colosseum.jpg', 'Packed with ancient history, the Colosseum is one of the most recognized landmarks and ruins in Rome. Dating back over 2,000 years it was once the ground for legendary gladiator contests that would entertain the masses.');
COMMIT TRANSACTION;
