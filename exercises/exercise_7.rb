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
puts "Enter a store name:"
store_name = gets.chomp

new_store = Store.create(name: store_name)

if new_store.errors.any?
  puts "Store creation failed due to the following validation errors:"
  new_store.errors.full_messages.each do |message|
    puts "- #{message}"
  end
else
  puts "Store '#{new_store.name}' created successfully!"
end
