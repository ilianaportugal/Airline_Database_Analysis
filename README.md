# Airline_Database_Analysis
This repository contains a dataset of airline and passenger data. With this dataset I created a database in MySQL Workbench, triggers to update tables when new data is inserted, and an analysis to provide valuable insight into passenger demographics and flight patterns. I also utilized Tableau to create visualizations to explore trends and patterns within the airline data.

## Dataset Overview
**PassengerID**: Unique identifier for each passenger.

**FirstName**: Passenger's first name.

**LastName**: Passenger's last name.

**Gender**: Gender of the passenger.

**Age**: Age of the passenger.

**Nationality**: Nationality of the passenger.

**AirportCountryCode**: Code representing the country of the arrival airport.

**CountryName**: Name of the arrival airport country.

**AirportContinent**: Continent where the arrival airport is located.

**Continents**: General continent classification.

**DepartureDate**: Date of flight departure.

**ArrivalAirport Code**: Code representing the arrival airport.

**PilotName**: Name of the pilot.

**FlightStatus**: Status of the flight (cancelled, on time, delayed).


## Database Schema
**airline_and_passenger_data table**: Contains all of the passenger and flight information.

**passenger_info table**: Stores unique passenger information based on PassengerID.

**pilot_info table**: Contains unique pilot names.

**airport_info table**: Stores unique airport information based on ArrivalAirportCode.

**cancelled_flights_tracker table**: Records passenger information when the FlightStatus is cancelled.


## Database Operations 
**create_tables_and_insert_data.sql**: Defines the schema of the database, creating tables passenger_info, pilot_info, airport_info, and cancelled_flights_tracker.

**create_triggers.sql**: Contains SQL triggers. The first trigger updates the passenger_info table when new data is added to airline_and_passenger_data. The second trigger updates the cancelled_flights_tracker when a new entry with a flight status of cancelled is added to airline_and_passenger_data.

**insert_sample_data_trigger_test.sql**: Inserts sample data into the airline_and_passenger_data table and ensures that the corresponding tables are updated correctly.

## Data Analysis
**airline_analysis.sql**: Contains SQL queries to perform analysis on the dataset, including finding the average age of passengers, gender distribution, nationality distribution, flight status counts, flight status distribution by departure date, country distribution, and identifying passengers with cancelled flights.

## Visualizations
