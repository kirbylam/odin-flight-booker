# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


airports = Airport.create([{identifier: 'SFO'}, {identifier: 'JFK'}, {identifier: 'DFW'}, {identifier: 'SLC'}])

flights = Flight.create([{departure_airport_id: 1, arrival_airport_id: 2, start_datetime: DateTime.new(2022, 1, 11, 12, 30, 0), flight_duration: 325},
                         {departure_airport_id: 1, arrival_airport_id: 3, start_datetime: DateTime.new(2022, 1, 2, 11, 00, 0), flight_duration: 215},
                         {departure_airport_id: 1, arrival_airport_id: 4, start_datetime: DateTime.new(2022, 2, 4, 2, 30, 0), flight_duration: 115},
                         {departure_airport_id: 2, arrival_airport_id: 1, start_datetime: DateTime.new(2022, 3, 1, 3, 30, 0), flight_duration: 325},
                         {departure_airport_id: 2, arrival_airport_id: 3, start_datetime: DateTime.new(2022, 1, 21, 4, 30, 0), flight_duration: 255},
                         {departure_airport_id: 2, arrival_airport_id: 4, start_datetime: DateTime.new(2022, 2, 8, 21, 15, 0), flight_duration: 330},
                         {departure_airport_id: 3, arrival_airport_id: 1, start_datetime: DateTime.new(2022, 7, 8, 18, 20, 0), flight_duration: 215},
                         {departure_airport_id: 3, arrival_airport_id: 2, start_datetime: DateTime.new(2022, 9, 21, 0, 40, 0), flight_duration: 225},
                         {departure_airport_id: 3, arrival_airport_id: 4, start_datetime: DateTime.new(2022, 1, 11, 11, 0, 0), flight_duration: 175},
                         {departure_airport_id: 4, arrival_airport_id: 1, start_datetime: DateTime.new(2022, 1, 1, 20, 45, 0), flight_duration: 115},
                         {departure_airport_id: 4, arrival_airport_id: 2, start_datetime: DateTime.new(2022, 1, 2, 3, 0, 0), flight_duration: 330},
                         {departure_airport_id: 4, arrival_airport_id: 3, start_datetime: DateTime.new(2022, 2, 3, 12, 20, 0), flight_duration: 175}]) 
