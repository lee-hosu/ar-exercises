require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)

@store1.employees.create(first_name: "Harry", last_name: "Potter", hourly_rate: 45)

@store1.employees.create(first_name: "Lord", last_name: "Voldemort", hourly_rate: 55)

@store2.employees.create(first_name: "Ron", last_name: "Weasley", hourly_rate: 45)
@store2.employees.create(first_name: "Hermione", last_name: "Granger", hourly_rate: 60)
@store2.employees.create(first_name: "Serverus", last_name: "Snape", hourly_rate: 50)
