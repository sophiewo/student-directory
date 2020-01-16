@students = []

def input_students
  puts "Please enter a student name?"
  puts "To finish, just type finish"

  name = gets.chomp
  puts "Which cohort?"
  cohort = gets.chomp.to_sym
  puts "Birth place?"
  birth_place = gets.chomp
  puts "Hobby?"
  hobby = gets.chomp

  while name != "finish" do
    @students << {name: name, cohort: cohort, birth_country: birth_place, hobbies: hobby }
      if @students.count == 1
        puts "Now we have #{@students.count} student, enter another name or finish to quit"
      else puts "Now we have #{@students.count} students, enter another name or finish to quit"
      end
      name = gets.chomp
      if name == "finish"
        break
      else puts "Cohort?"
            cohort = gets.chomp.to_sym
          puts "Birth place?"
            birth_place = gets.chomp
          puts "Hobby"
            hobby = gets.chomp
      end
  end
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_footer
  if @students.count == 0
    puts "There are currently no students in the directory "
  elsif condition
     @students.count == 1
    puts "Overall, we have #{@students.count} great student."
  else
    puts "Overall, we have #{@students.count} great students"
  end
end



def print_student_list
  @students.each_with_index do |student, index|
    puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def show_students
  print_header
  print_student_list
  print_footer
end


def print_menu
  puts "What would you like to do?"
  puts "1. Input students to the directory"
  puts "2. Show the students in the directory"
  puts "9. Exit"
end

def show_students
  print_header
  print_student_list
  print_footer
end

def process(selection)
    case selection
    when "1"
    # Input students to the directory
    input_students
    when "2"
      # Show the students in the directory
      show_students
    when "9"
      exit
    else
      puts "I don't know what you meant, try again"
    end
  end

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

interactive_menu
 #print_cohort(students)
