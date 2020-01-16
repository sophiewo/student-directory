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

# 10. We've been using the chomp() method to get rid of the last return character.
# Find another method among those provided by the String class
# that could be used for the same purpose
# (although it will require passing some arguments).


def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

# Not sure how to do this?
#4. Rewrite the each() method that prints all students using
#while or until control flow methods (Loops).

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
