require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total_revenue = Store.sum(:annual_revenue)
puts "Total annual revenue for all stores: $#{total_revenue}"

average_revenue = Store.average(:annual_revenue)
puts "Average annual revenue per store: $#{average_revenue.to_i}"

high_revenue_stores_count = Store.where('annual_revenue >= ?', 1_000_000).count
puts "Number of stores generating $1M or more: #{high_revenue_stores_count}"