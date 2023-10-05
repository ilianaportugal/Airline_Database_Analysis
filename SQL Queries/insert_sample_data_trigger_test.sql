-- Insert data into airline_and_passenger_data to test triggers
-- INSERT INTO airline_and_passenger_data (`PassengerID`, `FirstName`, `LastName`, `Gender`, `Age`, `Nationality`, `AirportCountryCode`, `CountryName`, `AirportContinent`, `Continents`, `DepartureDate`, `ArrivalAirport`, `PilotName`, `FlightStatus`)
-- VALUES ("ABCDEF", "Iliana", "Portugal", "Female", "25", "United States", "US", "United States", "NAM", "North America", "10/3/2023", "SFO", "Pilot Pete", "Cancelled");


-- Look for new values in passenger_info and cancelled_flights_tracker table
-- SELECT * FROM passenger_info WHERE `PassengerID` = "ABCDEF";
-- SELECT * FROM cancelled_flights_tracker WHERE `PassengerID` = "ABCDEF";
