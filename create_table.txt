\! clear = clear screen

CREATE TABLE table name (Column name + data type + constraints if any)

CREATE TABLE person (
    id int,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(6),
    date_of_birth TIMESTAMP,
);

without constraints

CREATE TABLE person (
    id int,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(7),
    date_of_birth DATE,
);

with constraints

CREATE TABLE person (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(7) NOT NULL,
    date_of_birth DATE NOT NULL,
    email VARCHAR(150)
);


