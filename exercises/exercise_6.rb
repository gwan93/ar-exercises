require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
### Exercise 6: One-to-many association

# We haven't used the Employee class (and employees table) at all yet. If you look at this table's column structure, you'll find that it has a `store_id` (integer) column. This is a column that identifies which store each employee belongs to. It points to the `id` (integer) column of their store.

# Let's tell Active Record that these two tables are in fact related via the `store_id` column.

# 1. Add the following code _directly_ inside the Store model (class): `has_many :employees`
# 2. Add the following code directly inside the Employee model (class): `belongs_to :store`
# 3. Add some data into employees. Here's an example of one (note how it differs from how you create stores): `@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)`
# 4. Go ahead and create some more employees using the create method. You can do this by making multiple calls to create (like you have before.) No need to assign the employees to variables though. Create them through the `@store#` instance variables that you defined in previous exercises. Create a bunch under `@store1` (Burnaby) and `@store2` (Richmond). Eg: `@store1.employees.create(...)`.

@store1.employees.create(first_name: "Alice", last_name: "Aliz", hourly_rate: 51)
@store1.employees.create(first_name: "Bob", last_name: "Bawb", hourly_rate: 52)
@store1.employees.create(first_name: "Carol", last_name: "Cairel", hourly_rate: 53)
@store2.employees.create(first_name: "David", last_name: "Duveed", hourly_rate: 54)
@store2.employees.create(first_name: "Eddie", last_name: "Ed", hourly_rate: 55)
@store2.employees.create(first_name: "Fred", last_name: "Ferad", hourly_rate: 56)
@store2.employees.create(first_name: "Gabby", last_name: "Ghabi", hourly_rate: 57)