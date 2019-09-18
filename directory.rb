
students = [
  {name: "Dr. Hannibal Lecter", cohort: :november, hobbies: "sport", cob: :uk},
  {name: "Darth Vader", cohort: :november, hobbies: "racing", cob: :uk},
  {name: "Nurse Ratched", cohort: :november,hobbies: "drinking", cob: :uk},
  {name: "Michael Corleone", cohort: :november, hobbies: "sport", cob: :uk},
  {name: "Alex DeLarge", cohort: :november, hobbies: "racing", cob: :uk},
  {name: "The Wicked Witch of the West", cohort: :november, hobbies: "gaming" , cob: :uk},
  {name: "Terminator", cohort: :november, hobbies: "gaming" , cob: :uk},
  {name: "Freddy Krueger", cohort: :november, hobbies: "sport", cob: :uk},
  {name: "The Joker", cohort: :november, hobbies: "gaming", cob: :uk },
  {name: "Joffrey Baratheon", cohort: :november, hobbies: "gaming", cob: :uk },
  {name: "Norman Bates", cohort: :november, hobbies: "sport", cob: :uk}
]

# and then print them
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  i = 0
  while i < students.length
    puts "#{students[i][:name]} #{students[i][:cohort]} cohort, \n their hobby is #{students[i][:hobbies]} and there country of birth is #{students[i][:cob]}"
    i = i + 1
  end
end
# finally, we print the total number of students
def print_footer(names)
puts "Overall, we have #{names.count} great student"
end
#nothing happebs until we call the methods

def input_students
  puts "Please enter the name of the student"
  puts "To finish, just hit return twice"
  #create an emtpy array
  students = []
  name = gets.chomp

  while !name.empty? do
    #add the student hash to the array
    students << {name: name, cohort: :november}
    puts "now we have #{students.count} stundents"
    name = gets.chomp
  end
  students
  # return the array of stundents
end

#students = input_students
print_header
print(students)
print_footer(students)
