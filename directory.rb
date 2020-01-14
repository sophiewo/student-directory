# students = [
#   {name: "Dr. Hannibal Lecter", cohort: :november},
#   {name: "Darth Vader", cohort: :november},
#   {name: "Nurse Ratched", cohort: :november},
#   {name: "Michael Corleone", cohort: :november},
#   {name: "Alex DeLarge", cohort: :november},
#   {name: "The Wicked Witch of the West", cohort: :november},
#   {name: "Terminator", cohort: :november},
#   {name: "Freddy Krueger", cohort: :november},
#   {name: "The Joker", cohort: :november},
#   {name: "Joffrey Baratheon", cohort: :november},
#   {name: "Norman Bates", cohort: :november}
# ]

# This works for the array of hashes above
# students.map do |name| name.values[0]
#     if name.values[0].start_with?("S")
#       puts name
#     end
#   end


def input_students

  puts "Please enter the student names?"
  puts "To finish, just hit return twice"

  students = []
  name = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end


def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

def print(students)
   students.each_with_index do |student , index|
     puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
   end
 end


 students = input_students
 print_header
 print(students)
 print_footer(students)

#print all of the student names

# then we print the number of students
