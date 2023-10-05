-- Create passenger_info table and insert with unique values from airline_and_passenger_data
-- CREATE TABLE IF NOT EXISTS `passenger_info` (
--  `PassengerID` text NOT NULL,
--  `FirstName` text,
--  `LastName` text,
--  `Gender` text,
--  `Age` int DEFAULT NULL,
--  `Nationality` text,
-- 	PRIMARY KEY (`PassengerID`));

-- INSERT INTO airline_dataset.passenger_info (`PassengerID`, `FirstName`, `LastName`, `Gender`, `Age`, `Nationality`)
-- SELECT DISTINCT `PassengerID`, `FirstName`, `LastName`, `Gender`, `Age`, `Nationality` 
-- FROM airline_dataset.airline_and_passenger_data
-- ON DUPLICATE KEY UPDATE 
--    `FirstName` = VALUES(`FirstName`),
--    `LastName` = VALUES(`LastName`),
--    `Gender` = VALUES(`Gender`),
--    `Age` = VALUES(`Age`),
--    `Nationality` = VALUES(`Nationality`);
   

-- Create pilot_info table and insert with unique values from airline_and_passenger_data
-- CREATE TABLE IF NOT EXISTS `pilot_info` (
--   `PilotName` varchar(45) NOT NULL,
--   PRIMARY KEY (`PilotName`));

-- INSERT INTO airline_dataset.pilot_info (`PilotName`)
-- SELECT DISTINCT `PilotName` FROM airline_dataset.airline_and_passenger_data;


-- Create airport_info table and insert unique values from airline_and_passenger_data
-- CREATE TABLE IF NOT EXISTS `airport_info` (
-- `AirportCountryCode` text,
-- `CountryName` text,
-- `AirportContinent` text,
-- `Continents` text,
-- `ArrivalAirport` varchar(45) NOT NULL,
-- PRIMARY KEY (`ArrivalAirport`));

-- INSERT INTO airline_dataset.airport_info (`ArrivalAirport`, `AirportCountryCode`, `CountryName`, `AirportContinent`, `Continents`)
-- SELECT DISTINCT `ArrivalAirport`, `AirportCountryCode`, `CountryName`, `AirportContinent`, `Continents` 
-- FROM airline_dataset.airline_and_passenger_data
-- ON DUPLICATE KEY UPDATE
--    `ArrivalAirport` = VALUES(`ArrivalAirport`),
--    `AirportCountryCode` = VALUES(`AirportCountryCode`),
--    `CountryName` = VALUES(`CountryName`),
--    `AirportContinent` = VALUES(`AirportContinent`),
--    `Continents` = VALUES(`Continents`);


-- Create cancelled_flights_tracker table and insert values from airline_and_passenger_data
-- CREATE TABLE IF NOT EXISTS cancelled_flights_tracker (`PassengerID` text NOT NULL,
--  `FirstName` text,
--  `LastName` text,
--  `FlightStatus` text,
--  `Message` text);

-- INSERT INTO airline_dataset.cancelled_flights_tracker (`PassengerID`, `FirstName`, `LastName`, `FlightStatus`)
-- SELECT `PassengerID`, `FirstName`, `LastName`, `FlightStatus` FROM airline_dataset.airline_and_passenger_data WHERE `FlightStatus` = "Cancelled";

-- UPDATE airline_dataset.cancelled_flights_tracker
-- SET `Message` = CONCAT("Flight was ", `FlightStatus`, " for passenger ", `FirstName`, " ", `LastName`);


