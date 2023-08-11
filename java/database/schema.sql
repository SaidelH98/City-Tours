BEGIN TRANSACTION;

DROP TABLE IF EXISTS itinerary_landmarks, itinerary, schedule, landmarks, city, users;

CREATE TABLE users (
	user_id SERIAL,
	username varchar(50) NOT NULL UNIQUE,
	password_hash varchar(200) NOT NULL,
	role varchar(50) NOT NULL,
	CONSTRAINT PK_user PRIMARY KEY (user_id)
);

CREATE TABLE city (
    city_id SERIAL,
    city_name varchar(50) NOT NULL,
    city_desc varchar(2000) NOT NULL,
    city_img varchar(500) NOT NULL,
    CONSTRAINT PK_city PRIMARY KEY (city_id)
);

CREATE TABLE landmarks (
	landmark_id SERIAL,
	name varchar(50) NOT NULL UNIQUE,
	city_id INT NOT NULL,
	country varchar(50) NOT NULL,
    venue_type varchar(200) NOT NULL,
	image varchar(500) NOT NULL,
	description varchar(2000) NOT NULL,
	address varchar(500) NOT NULL,
	CONSTRAINT fk_city FOREIGN KEY(city_id) REFERENCES city(city_id),
	CONSTRAINT PK_landmark PRIMARY KEY (landmark_id )
);

CREATE TABLE schedule (
    id SERIAL,
    landmark_id INT NOT NULL,
    day_of_operation varchar(50) NOT NULL,
    open_time int NOT NULL,
    close_time int NOT NULL,
    CONSTRAINT fk_landmark FOREIGN KEY(landmark_id) REFERENCES landmarks(landmark_id),
    CONSTRAINT PK_schedule PRIMARY KEY (id)
);

CREATE TABLE itinerary (
    itinerary_id SERIAL,
    name varchar(50) NOT NULL,
    starting_point varchar(500) NOT NULL,
    date date,
    CONSTRAINT PK_itinerary PRIMARY KEY (itinerary_id)
);

CREATE TABLE itinerary_landmarks (
    itinerary_id int NOT NULL,
    landmark_id int NOT NULL,
    itinerary_order int NOT NULL,
    CONSTRAINT pk_itinerary_landmarks PRIMARY KEY (itinerary_id, landmark_id),
    CONSTRAINT fk_itinerary_landmarks_landmarks FOREIGN KEY (landmark_id) REFERENCES landmarks(landmark_id),
    CONSTRAINT fk_itinerary_landmarks_itinerary FOREIGN KEY (itinerary_id) REFERENCES itinerary(itinerary_id)
);



COMMIT TRANSACTION;
