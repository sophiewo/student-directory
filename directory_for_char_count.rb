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
  puts "The students of Villains Academy whose names are shorter than 12 characters are: "
  puts "-------------"
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students but the ones with long names have been excluded"
end

# if name value is < 12 output
def sort_print_specific_length(students)
  students.map do |name|
    name.values[0].length
    if name.values[0].length < 12
        puts "#{name[:name]} (#{name[:cohort]} cohort)"
    end
  end
end


students = input_students

print_header
sort_print_specific_length(students)
print_footer(students)
