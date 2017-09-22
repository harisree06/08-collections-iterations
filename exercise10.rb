# Start out by creating the following hash representing the number of students in past Bitmaker cohorts:
def bitmaker_students(students)
  students.each do |cohort,number|
    puts "#{cohort}: #{number}"
  end
end
students = {
:cohort1 => 34,
:cohort2 => 42,
:cohort3 => 22
}
# Create a method that displays the name and number of students for each cohort.
puts "\nThese are the following Bitmaker past students' number:"
bitmaker_students(students)

# Add cohort 4, which had 43 students, to the hash.
students[:cohort4] = 43

# Use the keys method to output all of the cohort names.

def cohort_key(students)
  students.each_key do |cohort|
    puts "#{cohort}"
  end
end

puts "\nThese are the following cohorts:"
cohort_key(students)

puts "\nThe classrooms have been expanded! Increase each cohort size by 5% and display the new results."

result = []
students.map do |cohort,class_size|
  result = class_size*1.05
  puts "#{cohort}: #{result}"
end

# Delete the 2nd cohort and redisplay the hash.

students.delete(:cohort2)
puts "\nThe 2nd cohort is removed and the updated Bitmaker hash is:"
puts "#{students}"

# BONUS: Calculate the total number of students across all cohorts using each and a variable to keep track of the total. Output the result.

total_number = 0
students.each_value do|class_size|
  total_number += class_size
end
puts "\nThe total number of students across all cohorts is: #{total_number}"


# BONUS: Create another similar hash called staff and display it using the display method from above.

staff = {
  staff1:4,
  staff2:10,
  staff3:14
}

puts staff
# After you're done, be sure you have committed and pushed everything to your Github repo.
#
