CREATE TABLE Airline_info (
    airline_id INTEGER PRIMARY KEY,
    airline_code VARCHAR(30) NOT NULL,
    airline_name VARCHAR(50) NOT NULL,
    airline_country VARCHAR(50) NOT NULL,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    info VARCHAR(50)
);
SELECT * FROM Airline_info;
ALTER TABLE Airline_info RENAME TO airline;
SELECT * FROM airline;

ALTER TABLE airline DROP COLUMN info;

SELECT * FROM airline;

drop table airline


CREATE TABLE Airport (
    airport_id integer PRIMARY KEY,
    airport_name varchar(50) NOT NULL ,
    country varchar(50) NOT NULL ,
    state varchar(50) NULL,
    city varchar(50) NULL,
    creates_at timestamp,
    updated_at timestamp
);
SELECT * FROM Airport;





CREATE TABLE Baggage_check (
    baggage_check_id integer PRIMARY KEY,
    check_result varchar(50) NULL,
    created_at timestamp,
    updated_at timestamp,
    booking_id integer NULL,
    passenger_id integer NULL
);
SELECT * FROM Baggage_check;





CREATE TABLE  Baggage (
    baggage_id integer PRIMARY KEY,
    weight_in_kg decimal(4,2) NULL,
    created_at timestamp,
    updated_at timestamp,
    booking_id integer NULL

);
SELECT  * FROM Baggage;




CREATE TABLE Boarding_pass (
    Boarding_pass_id integer PRIMARY KEY,
    booking_id integer NOT NULL,
    seat varchar(50) NULL ,
    boarding_time timestamp,
    created_at timestamp,
    updated_at timestamp
);
SELECT * FROM Boarding_pass;





CREATE TABLE Booking_fight (
    booking_fight_id integer PRIMARY KEY,
    booking_id integer NOT NULL,
    fight_id integer NOT NULL,
    created_at timestamp,
    updated_at timestamp
);
SELECT * FROM Booking_fight;




CREATE TABLE Flights (
    flight_id integer PRIMARY KEY,
    sch_departure_time timestamp NOT NULL,
    sch_arrival_time timestamp NOT NULL ,
    departing_airport_id integer NOT NULL ,
    arriving_airport_id integer NOT NULL ,
    departing_gate varchar(50),
    arriving_gate varchar(50),
    airline_id integer NOT NULL,
    act_departure_time timestamp,
    act_arrival_time timestamp,
    created_at timestamp,
    updated_at timestamp
);
ALTER TABLE Flights
ALTER COLUMN departing_gate TYPE TEXT;

SELECT * FROM Flights;


CREATE TABLE Booking (
    booking_id INTEGER PRIMARY KEY,
    flight_id INTEGER NOT NULL,
    passenger_id INTEGER NOT NULL,
    booking_platform VARCHAR(50),
    created_at TIMESTAMP ,
    updated_at TIMESTAMP ,
    status VARCHAR(50),
    price DECIMAL(7,2) NOT NULL
);
ALTER TABLE Booking RENAME COLUMN price TO ticket_price;

SELECT * FROM Booking;






CREATE TABLE Security_check (
    security_check_id INTEGER PRIMARY KEY,
    check_result VARCHAR(20),
    created_at TIMESTAMP ,
    updated_at TIMESTAMP ,
    passenger_id INTEGER NOT NULL
);
SELECT * FROM Security_check;





