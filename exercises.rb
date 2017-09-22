# Save each of the following arrays and hashes into variables. You will use them throughout the assignment.
#
# Eg. fav_colours = ...
#
# Create an array for each item below that contains the given information:
#
# your favourite colours
# the age of you and your siblings/cousins/friends
# flip a coin 5 times and record whether or not the result was 'heads'
# your three favourite performing artists
# your favourite colours again (this time as symbols instead of strings)

# Create a hash for each item below that contains the given information:
# three words and their definitions
# your favourite movie names and their year of creation
# three cities of the world and their population
# the names of your siblings/cousins/friends and their ages
# After you've done that you should run your code to make sure there aren't any syntax errors. You should get in the habit of running your code after each step in order to catch any mistakes as soon as they're introduced.

fav_colours = ["red","blue","purple","yellow","green"]
age = [5,10,15,20,25]
coin_flip = ["head","head","head","tail","tail"]
artists = ["John Legend","Linkin Park","The Weeknd"]
fav_colours_symbol = [colour_1:"red",colour_2:"blue",colour_3:"purple",colour_4:"yellow",colour_5:"green"]

word_definition = {sad: 'unhappy', happy: 'cheerful',angry: 'mad'}
movie_year = {inception:2010,IT:2017,jurassic_park:1993,mean_girls:2003}
cities_population = {toronto: 5, tokyo: 36, new_york: 12}
people_ages = {cindy:5,jessica:10,michael:15,john:20,chris:25}

############### EXERCISE 1 ###############

# Print out the array of coin flips.
puts coin_flip

# Print out the first element of the array of your favourite colours.
puts "The first element of the colour array is\n"
puts fav_colours[0].upcase

# Output the sorted version of the array of your friends and family members' ages.
puts "The family members' ages in order: #{age.sort}"

# Add a new baby (0 years old) to the array of your family's ages.
age << 0
puts age.sort

# Using the hash of movie information, access and print the year of one of the movies.
puts movie_year[:inception]

# If you haven't done so recently, now would be a good time to check that your code works and commit once it does.

############### EXERCISE 2 ###############

# Print out the last element of the array of your favourite colours.
puts fav_colours[-1]
# Note: this should work for an array of any size!

# Add a new city to the hash of cities and population.
cities_population[:london] = '18'

# Reverse the array of coin flips and save it.
puts coin_flip.reverse

# Print out the population of one of the cities.
puts cities_population[:toronto]

# Print out a sentence about each item in the array of performing artists. For example:
# I think Pearl Jam is great.
# I think Lady Gaga is great.
# I think Pink Floyd is great.

artists.each_with_index {|person,index|
  puts "I think #{artists[index]} is great.\n"
}

############ EXERCISE 3 #############

# Print out the first two performing artists in that array.
puts "The first two performing artists are #{artists[-2].upcase} and #{artists[-3].upcase}"

# For each of your favourite movies, print out a sentence about when the movie was released. For example:

movie_year.each do |key, value|
   print "#{key} came out in #{value}\n"
end

####### FORMULA TO ACCESS THE KEYS AND VALUES IN A LOOP ###########
# hash.keys.each_with_index do |key, index|
#    value = hash[key]
#    print "key: #{key}, value: #{value}, index: #{index}\n"
#    # use key, value and index as desired
# end

# Sort and reverse the array of ages of your family. Save it and print it to the screen.
puts age.sort.reverse

# See if you can sort and reverse the array on one line!
print age.sort.reverse

# Add "Beauty and the Beast" movie to your hash of movies information, but with a twist: the movie was released both in 1991 and in 2017. Print it out.
movie_year[:"Beauty and the Beast"] = [1991, 2017]
puts movie_year

puts "################ EXERCISE 4 ################"
#
# Print out all of the ages of your friends/family that are less than 30 (or any number where some ages will not be printed!).
age.select { |under_30|
  age_result = under_30 < 30
  age_result
}

# Find and output the age of the oldest person in your friends/family array.
puts "\nThe oldest age is #{age.max} years old."

# Count how many times you flipped 'heads' using the coin flips array.
puts "The coin came up heads #{coin_flip.count('head')} times."

# You realize one of the performing artists in your list is no longer a favourite. Remove one of them from the array.
puts "#{artists.pop} is no longer my favourite."
puts "My remaining favourite artists are\n"
puts artists

# Pick a city in your city population hash and change its population.
cities_population[:toronto] = '37'

puts "################ EXERCISE 5 #################"

# Find the sum total of the population in the hash of cities.
# sum = 0
# cities_population.each_value do |population|
#   sum += population
# end
# puts sum

# Using your hash containing the names of your family and friends with their ages, print out one of two messages for each depending on their age. For example:
# Martha is old.
# Stewart is young.
# Holly is young.
people_ages.each do |person, age|
  if age >= 20
    puts "#{person} is old"
  else
    puts "#{person} is young"
  end
end

# Print out the last two colours in your array of favourite colours.
puts "#{fav_colours[-1]} and #{fav_colours[-2]}"

# Increase by 1 the age of everyone in your array of ages. Print it out.
age_1 = [1,1,1]

age_new = age + age_1
puts age_new

  # sum = 0
  # array.each { |a| sum+=a }
# Add two new colours to your array of favourite colours.

fav_colours << 'brown'
fav_colours << 'orange'

puts "################ EXERCISE 6 #################"
# Make a new hash that contains a list of movies for each year. Each list of movies should be an array. Below is some data you can use.
more_movie_year = {

1999=>["The Matrix","Star Wars: Episode 1","The Mummy"],
2009=>["Avatar", "Star Trek", "District 9"],
2019=>["How to Train Your Dragon 3","Toy Story 4","Star Wars: Episode 9"]

}

# Make a new array that contains each row of the buttons on a phone. Each row should be an array.
# The rows on a phone are: 1 2 3, 4 5 6, 7 8 9, * 0 #
phone_row = [[1,2,3],[4,5,6],[7,8,9],["*",0,"#"]]

# Make a new array that contains information about three countries. Each country should be a hash that has a name, a continent, and whether or not it is an island.
country_description = [
  {
    country:"Canada",
    continent:"North America",
    island:"no"
  },
  {
    country:"Japan",
    continent:"Asia",
    island:"yes"
  },
  {
    country:"Germany",
    continent:"Europe",
    island:"no"
  }
]

puts "################ EXERCISE 7 #################"
#
# Output the message "I will not skateboard in the halls" 20 times.
# Create an array consisting of the above message. It should appear in the array 20 times.
skateboard = []

20.times do
  skateboard.push("I will not skateboard in the halls")
end

# Create an array consisting of the numbers between 1 and 50.
array_50 = Array.new(50) {|i|
  i+1
}
puts "#{array_50}"

# Use an each loop to find the sum of the numbers in the above array.
array_50.each do |i|
  sum = 0
  sum += i
end

puts "#{array_50}"

puts "stop"

# Create a new array which has three of each number up to 50.
# Ie. [1, 1, 1, 2, 2, 2, 3, 3, 3, ... , 50, 50, 50] and so on, up to 50.


# Make a new array out all of the countries from the hash in Exercise 6 that are not islands. Print out both arrays.

non_island = []

country_description.each do |country|

  if country[:islands] == "no"
    non_island << country[:islands]
  end
  puts non_island
end

puts "-------- EXERCISE 8 --------"

# You want to add up your expenses for the year. Create an array of numbers (integers or floats) that represents your expenses, eg:
# [250, 7.95, 30.95, 16.50]
# Add up the numbers and output the result.

# Tip: you may need a variable to keep track of the sum total. What value should it start at?

# Put this code into a method. The method should take an array as an argument and return the sum of the expenses in the array. Call the method twice with different arrays.

def get_sum(list_expenses)
  sum = 0
  list_expenses.each do|value|
    sum += value
  end
  puts "The total sum is $#{sum.round(2)}."
end

# add 8 random expenses into an array
list_expenses = []
8.times do
  list_expenses << rand.round(2)
end

puts get_sum(list_expenses)

puts "-------- EXERCISE 9 ---------"

# We're going to make a shopping list by storing a few items in an array. Feel free to start with whatever items you like:

grocery_list = ["carrots", "toilet paper", "apples", "salmon"]

# Your next step should present your grocery list with an item on each line, with an asterisk (*) in front of it so that it appears like this:

def total_item(grocery_list)
  grocery_list.count
end

grocery_list.each do |food|
  puts "*#{food}"
end

grocery_list << "rice"

puts "\nCurrent food in the list"
puts grocery_list

# You lost count of how many things you need to pick up. Better output the total number of items on your list.
puts "\nThe total number of foods in the grocery list is #{total_item(grocery_list)}."
# You realize you've forgotten some rice, so add it to your list and output it again. Given that you've already output your list twice, it might be good to consider writing a method to do this. Putting frequently used chunks of code in a method lets you reuse them throughout your program without having to type them out over and over.

# Check to see if your list includes "bananas". If it does, output "You need to pick up bananas". Otherwise, output "You don't need to pick up bananas today".

puts "\nIs bananas in the grocery_list?"
puts "#{grocery_list.include?("bananas")}"

# Display the second item in the list. (Don't forget that arrays indices start at zero!)
puts "\nThe second item in the grocery list is #{grocery_list[1].upcase}."

# It turns out that everything in this grocery store you're visiting is stored alphabetically, so to better plan out what you need to buy you should sort your grocery list and output it with asterisks again.
puts "\nsorted grocery list"
grocery_list.sort!
grocery_list.each do |food|
  puts "*#{food}"
end

# After looking everywhere, you can't find the salmon. Delete it from your list and redisplay the list one last time.

grocery_list.delete("salmon")
puts "\nThe salmon is not around so let's remove it from the list"
puts grocery_list
# After you're done, be sure you have everything committed and pushed to your github repo.
