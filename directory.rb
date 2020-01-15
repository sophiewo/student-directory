# students = [
#   {name: "Dr. Hannibal Lecter", cohort: :november},
#     {name: "Darth Vader", cohort: :november},
#     {name: "Nurse Ratched", cohort: :november},
#     {name: "Michael Corleone", cohort: :november},
#     {name: "Alex DeLarge", cohort: :november},
#     {name: "The Wicked Witch of the West", cohort: :march},
#     {name: "Terminator", cohort: :november},
#     {name: "Freddy Krueger", cohort: :november},
#     {name: "The Joker", cohort: :november},
#     {name: "Joffrey Baratheon", cohort: :march},
#     {name: "Norman Bates", cohort: :november}
#     ]

# This works for the array of hashes above
# students.map do |name| name.values[0]
#     if name.values[0].start_with?("S")
#       puts name
#     end
#   end


def input_students

  puts "Please enter a student name?"
  puts "To finish, just type exit"

  students = []
  name = gets.chomp
  puts "Which cohort?"
  cohort = gets.chomp.to_sym
  puts "Birth place?"
  birth_place = gets.chomp
  puts "Hobby?"
  hobby = gets.chomp
#
  while name != "exit" do
    students << {name: name, cohort: cohort, birth_country: birth_place, hobbies: hobby }
      if students.count == 1
        puts "Now we have #{students.count} student, enter another name or exit to quit"
      else puts "Now we have #{students.count} students, enter another name or exit to quit"
      end
      name = gets.chomp
      if name == "exit"
        break
      else puts "Cohort?"
            cohort = gets.chomp.to_sym
          puts "Birth place?"
            birth_place = gets.chomp
          puts "Hobby"
            hobby = gets.chomp
      end
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
     puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort) who was born in #{student[:birth_country]} and loves #{student[:hobbies]}"
   end
end

#change so prints all people by cohort not just november ones...
def print_cohort(students)
  students_by_cohort = {}

  students.each do |student|
    cohort = student[:cohort]

    if students_by_cohort[cohort] == nil
      students_by_cohort[cohort] = []
    end
    students_by_cohort[cohort].push(student[:name])
  end

  puts "The students sorted by cohort are as follows:"
  students_by_cohort.each do |cohort| cohort.to_s
  puts  cohort[0].capitalize
  puts "--"
  puts cohort[1]
end
end

 students = input_students
 print_header
 print(students)
 print_footer(students)

 print_cohort(students)
