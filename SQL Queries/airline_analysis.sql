-- Find the average age of passengers
-- SELECT AVG(Age) FROM airline_dataset.passenger_info;

-- Find the distribution of genders for airline passengers
-- SELECT Gender, COUNT(Gender) FROM airline_dataset.passenger_info GROUP BY Gender;

-- Find the distirbution of nationalities for airline passengers
-- SELECT Nationality, COUNT(Nationality) FROM airline_dataset.passenger_info GROUP BY Nationality ORDER BY COUNT(Nationality) DESC;

-- Find the count of each flight status category for airline data
-- SELECT `FlightStatus`, COUNT(`FlightStatus`) FROM airline_dataset.airline_and_passenger_data GROUP BY `FlightStatus`;

-- Find count of each flight status category by departure date
-- SELECT `DepartureDate`, `FlightStatus` FROM airline_dataset.airline_and_passenger_data ORDER BY `DepartureDate` ASC;

-- Find distribution of Countries for airline data
-- SELECT `CountryName`, COUNT(`CountryName`) FROM airline_dataset.airline_and_passenger_data GROUP BY `CountryName` ORDER BY COUNT(`CountryName`) DESC;

-- Find which passengers had a flight cancelled
-- SELECT `PassengerID`, `FirstName`, `LastName` FROM airline_dataset.airline_and_passenger_data WHERE `FlightStatus` = 'Cancelled';