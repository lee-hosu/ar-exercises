require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "Please enter a store name:"
store_name = gets.chomp

puts "Enter annual revenue:"
annual_revenue = gets.chomp.to_i # convert string to integer

puts "Does the store carry men's apparel? (yes/no)"
mens_apparel = gets.chomp.downcase == 'yes'

puts "Does the store carry women's apparel? (yes/no)"
womens_apparel = gets.chomp.downcase == 'yes' 

new_store = Store.new(
  name: store_name, 
  annual_revenue: annual_revenue, 
  mens_apparel: mens_apparel, 
  womens_apparel: womens_apparel
)

if new_store.save
  puts "Store created successfully!"
else
  puts "Error: Unable to create store."
  new_store.errors.full_messages.each do |message|
    puts message
  end
end
