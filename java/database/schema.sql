BEGIN TRANSACTION;

DROP TABLE IF EXISTS schedule, landmarks, users;

CREATE TABLE users (
	user_id SERIAL,
	username varchar(50) NOT NULL UNIQUE,
	password_hash varchar(200) NOT NULL,
	role varchar(50) NOT NULL,
	CONSTRAINT PK_user PRIMARY KEY (user_id)
);

CREATE TABLE landmarks (
	landmark_id SERIAL,
	name varchar(50) NOT NULL UNIQUE,
	city varchar(50) NOT NULL,
	country varchar(50) NOT NULL,
    venue_type varchar(200) NOT NULL,
	image varchar(500) NOT NULL,
	description varchar(2000) NOT NULL,
	address varchar(500) NOT NULL,
	CONSTRAINT PK_landmark PRIMARY KEY (landmark_id )
);

CREATE TABLE schedule (
    id SERIAL,
    landmark_id INT NOT NULL,
    day_of_operation varchar(50) NOT NULL,
    open_time varchar(50) NOT NULL,
    close_time varchar(50) NOT NULL,
    CONSTRAINT fk_landmark FOREIGN KEY(landmark_id) REFERENCES landmarks(landmark_id),
    CONSTRAINT PK_schedule PRIMARY KEY (id)
);

COMMIT TRANSACTION;
