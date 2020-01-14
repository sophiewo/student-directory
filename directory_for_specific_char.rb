#This isn't working properly....

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

def letter_filter
  puts "Chose a letter to sort by"
  letter = gets.chomp
end

def print_header(letter)
  puts "The students of Villains Academy whose names start with: #{letter}"
  puts "-------------"
end


def filter_specific_students(students, letter)
  students_specific = []
  students.map do |name2| name2.values[0]
    if name2.values[0].start_with?(letter)
    puts  students_specific <<  {name: name2, cohort: :november}
    end
  
  end
end

def print_spec(students_specific)
   students_specific.each_with_index do |student , index|
     puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
   end
 end

 def print_footer_specific(students, students_specific, letter)
   puts "Overall, we have #{students.count} great students and #{students_specific.count} whose name starts with :#{letter}"
 end


students = input_students
letter = letter_filter
students_specific = filter_specific_students(students, letter)


filter_specific_students(students, letter)

print_header(letter)
print_spec(students_specific)
print_footer_specific(students, students_specific, letter)
