require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

newemployee = Store.find_by(id: 2).employees.create(first_name: "Henry", last_name: "Henree", hourly_rate: 50)
puts newemployee.errors.full_messages