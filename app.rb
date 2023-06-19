require_relative 'student'
require_relative 'teacher'
class App
    def initialize
        @books = []
        @people = []
        @rentals = []
    end

    def list_books
        @books.each { |book| puts "Title: #{book.title}, Author: #{book.author}" }
    end

    def list_people
        @people.each { |person| puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}" }
    end

    def create_person
        print "Do you want to create a new student (1) or teacher (2)? [Inout the number]: "
          selected_person_type = Integer(gets.chomp())
          case selected_person_type
          when 1
            print "Age: "
            age = Integer(gets.chomp)
            print "Name: "
            name = gets.chomp
            print "Has parent permission? [Y/N]"
            parent_permission = gets.chomp.downcase

            case parent_permission
            when 'n'
              student = Student.new(nil, age, name, parent_permission: false)
              @people << student
            when 'y'
              student = Student.new(nil, age, name, parent_permission: true)
              @people << student
            else
              'You have entered an invalid option'
            end

            puts "You have successfully registered a Student"
            
          when 2
                print "teacher's specialization: "
                specialization = gets.chomp
                print "teacher's age: "
                age = gets.chomp
                print "teacher's name: "
                name = gets.chomp
                teacher = Teacher.new(specialization, age, name, parent_permission: true)
                @people << teacher
                puts 'You have successfully registered a Teacher'
          end
        end
end