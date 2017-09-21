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

# Use the keys method to output all of the cohort names.
#
# The classrooms have been expanded! Increase each cohort size by 5% and display the new results.
#
# Delete the 2nd cohort and redisplay the hash.
#
# BONUS: Calculate the total number of students across all cohorts using each and a variable to keep track of the total. Output the result.
#
# BONUS: Create another similar hash called staff and display it using the display method from above.
#
# After you're done, be sure you have committed and pushed everything to your Github repo.
#
