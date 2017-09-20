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
age = ["5","10","15","20","25"]
coin_flip = ["head","head","head","tail","tail"]
artists = ["John Legend","Linkin Park","The Weeknd"]
fav_colours_symbol = [colour_1:"red",colour_2:"blue",colour_3:"purple",colour_4:"yellow",colour_5:"green"]

word_definition = {sad: 'unhappy', happy: 'cheerful',angry: 'mad'}
movie_year = {inception:'2010',IT:'2017',jurassic_park:'1993',mean_girls:'2003'}
cities_population = {toronto: '5', tokyo: '36', new_york: '12'}
people_ages = {cindy:'5',jessica:'10',michael:'15',john:'20',chris:'25'}

############### EXERCISE 1 ###############

# Print out the array of coin flips.
puts coin_flip

# Print out the first element of the array of your favourite colours.
puts "The first element of the colour array is\n"
puts fav_colours[0].upcase

# Output the sorted version of the array of your friends and family members' ages.
puts "The family members' ages in order: #{age.sort}"

# Add a new baby (0 years old) to the array of your family's ages.
age << '0'
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
movie_year[:"Beauty and the Beast"] = 2017
puts movie_year

################ EXERCISE 4 ################
#
# Print out all of the ages of your friends/family that are less than 30 (or any number where some ages will not be printed!).
# Find and output the age of the oldest person in your friends/family array.
# Count how many times you flipped 'heads' using the coin flips array.
# You realize one of the performing artists in your list is no longer a favourite. Remove one of them from the array.
# Pick a city in your city population hash and change its population.
