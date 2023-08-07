BEGIN TRANSACTION;

DROP TABLE IF EXISTS users;

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
    venue_type varchar(200) NOT NULL,
	day_of_operation varchar(50) NOT NULL,
	image varchar(500) NOT NULL,
	description varchar(2000) NOT NULL,
	CONSTRAINT PK_landmark PRIMARY KEY (landmark_id )
);

COMMIT TRANSACTION;
