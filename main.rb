require_relative 'person'
require_relative 'book'
require_relative 'student'
require_relative 'classroom'
require_relative 'rental'
require_relative 'teacher'
require_relative 'app'

def main
    
    app = App.new
    loop do 
  puts 'Welcome to the OOP Library'
  puts  "Please enter the number for the task you want to perform" 
  puts ""
  puts 'choose one of the following'
  puts "1 - List all books."
  puts "2 - List all people."
  puts "3 - Create a person (teacher or student, not a plain Person)."
  puts "4 - Create a book."
  puts "5 - Create a rental."
  puts "6 - List all rentals for a given person id."
  puts "7 - Exit"
  selected = Integer(gets.chomp) 

  case selected
  when 1
    puts "selected1"
  when 2
    app.list_people
  
when 3
    app.create_person

when 4
    puts "comming soon..."
when 5
    puts "comming soon..."
when 6
    puts "comming soon..." 
when 7
    puts "Goodbye!"
    exit
  end

end

end

main
