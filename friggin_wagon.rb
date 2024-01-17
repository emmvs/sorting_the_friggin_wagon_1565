# Pseudo Code
# TODO Ask the user for student name ✅
puts "Type a student name:"
# TODO save the user input ✅
student_name = gets.chomp
# TODO Generate Array for multiple student names ✅
students = []
students << student_name
# students.push(student_name)
# students = Array.new
# TODO Not only want to do this once or twice, but maybe 100000000000

# TODO LOOOOOOOOOP

until student_name == ""
  puts "Type another student name or press enter to finish:"
  student_name = gets.chomp
  students << student_name
end

students.pop


# p students
# students.shift
# p students
# .empty?

# TODO The students array needs to be storted
def wagon_sort(students)
  # - sort alphabetically
  students.sort_by { |student| student.capitalize }
end

sorted_students = wagon_sort(students)

# p sorted_students

# TODO Write an if/else statement
# depending on how many students the user put in before

if sorted_students.count == 1
  puts "Congratulations! Your Wagon has #{sorted_students.count} student:"
  puts "#{sorted_students.first}"
elsif sorted_students.count == 2
  puts "Congratulations! Your Wagon has #{sorted_students.count} students:"
  puts "#{sorted_students.first} and #{sorted_students.last}"
elsif sorted_students.count == 3
  puts "Congratulations! Your Wagon has #{sorted_students.count} students:"
  puts "#{sorted_students.first}, #{sorted_students[1]} and #{sorted_students.last}"
else
  puts "Congratulations! Your Wagon has #{sorted_students.count} students:"
  first_student = sorted_students.shift
  second_student = sorted_students.shift
  last_student = sorted_students.pop
  puts "#{first_student}, #{second_student}, #{sorted_students.join(", ")} and #{last_student}"
end

# bob, Cedric, emma, phil and felix

# if the user put in only one student
# certain "Emma"
# if the user put in only one student
# certain "Emma and Adam"
# if the user put in only one student
# certain "Emma, Josh and Adam"
# if the user put in only one student
# certain "Emma, Josh, Pauline, bjdsfjfbsjhbrf and Adam"
