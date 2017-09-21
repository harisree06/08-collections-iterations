# PizzaMaker wants to handle bulk orders of pizzas, with varying amounts of toppings on each. Ask the user for a number of pizzas - call it quantity. We then want to ask the user for quantity more numbers - the number of toppings on that pizza - and print them out as in the following example.
#
# How many pizzas do you want to order?
# $ 3
# How many toppings for pizza 1?
# $ 5
# You have ordered a pizza with 5 toppings.
# How many toppings for pizza 2?
# $ 1
# You have ordered a pizza with 1 toppings.
# How many toppings for pizza 3?
# $ 4
# You have ordered a pizza with 4 toppings.

# You will need:

# to ask the user for input twice.
# a loop of some kind.
# to make sure your variables are what you think they are! Convert them to integers if needed.
# string interpolation

puts "How many pizzas do you want to order?"
number = gets.chomp.to_i

pizza_quantity = (1..number).to_a

pizza_quantity.each do |value|

  puts "How many toppings for pizza #{pizza_quantity[value-1]}?"
  toppings_quantity = gets.chomp.to_i

  puts "You have ordered a pizza with #{toppings_quantity} toppings."

end
