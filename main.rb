require_relative 'person'
require_relative 'book'
require_relative 'student'
require_relative 'classroom'
require_relative 'rental'
require_relative 'teacher'
require_relative 'app'

def options
  puts 'Please enter the number for the task you want to perform'
  puts 'choose one of the following'
  puts '1 - List all books.'
  puts '2 - List all people.'
  puts '3 - Create a person (teacher or student).'
  puts '4 - Create a book.'
  puts '5 - Create a rental.'
  puts '6 - List all rentals for a given person id.'
  puts '7 - Exit'
end

def handle_list_books(app)
  app.list_books
end

def handle_list_people(app)
  app.list_people
end

def handle_create_person(app)
  app.create_person
end

def handle_create_book(app)
  app.create_book
end

def handle_create_rental(app)
  app.create_rental
end

def handle_list_rental(app)
  app.list_rental
end

def main
  app = App.new
  loop do
    options
    selected = Integer(gets.chomp)

    case selected
    when 1
      handle_list_books(app)
    when 2
      handle_list_people(app)
    when 3
      handle_create_person(app)
    when 4
      handle_create_book(app)
    when 5
      handle_create_rental(app)
    when 6
      handle_list_rental(app)
    when 7
      puts 'Goodbye!'
      exit
    end
  end
end

main
