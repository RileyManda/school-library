require_relative 'person'
require_relative 'book'
require_relative 'student'
require_relative 'teacher'
require_relative 'rental'

class App
  def initialize
    @books = []
    @people = []
    @rentals = []
  end

  def list_books
    @books.each do |book|
      puts "Title: #{book.title}, Author: #{book.author}"
    end
  end

  def list_people
    @people.each do |person|
      puts "ID: #{person.id}, Name: #{person.name}, Age: #{person.age}"
    end
  end

def create_person
  puts "Is the person a Student(1) or a Teacher(2)? (Input the number)"
  type = gets.chomp.to_i
  puts "Enter person's name:"
  name = gets.chomp
  puts "Enter person's age:"
  age = gets.chomp.to_i
  puts "Is parent permission required? (y/n)"
  parent_permission = gets.chomp.downcase == 'y'

  if type == 1
    student = Student.new(age, name)
    @people << student
    puts "Student created with ID: #{student.id}"
  elsif type == 2
    person = Person.new(age, name)
    @people << person
    puts "Teacher created with ID: #{person.id}"
  else
    puts "Invalid option. Person creation failed."
  end
end





  def create_book
    puts "Enter book's title:"
    title = gets.chomp
    puts "Enter book's author:"
    author = gets.chomp

    book = Book.new(title, author)
    @books << book
    puts "Book created with ID: #{book.id}"
  end

  def create_rental
    puts "Enter person's ID:"
    person_id = gets.chomp
    person = @people.find { |p| p.id == person_id }

    if person.nil?
      puts "Person not found. Rental creation failed."
      return
    end

    puts "Enter book's ID:"
    book_id = gets.chomp
    book = @books.find { |b| b.id == book_id }

    if book.nil?
      puts "Book not found. Rental creation failed."
      return
    end

    puts "Enter rental date (YYYY-MM-DD):"
    date = gets.chomp

    rental = Rental.new(date, book, person)
    @rentals << rental
    puts "Rental created with ID: #{rental.id}"
  end

  def list_rentals_for_person
    puts "Enter person's ID:"
    person_id = gets.chomp
    person = @people.find { |p| p.id == person_id }

    if person.nil?
      puts "Person not found."
      return
    end

    rentals = @rentals.select { |r| r.person.id == person_id }

    rentals.each do |rental|
      puts "ID: #{rental.id}, Book: #{rental.book.title}, Date: #{rental.date}"
    end
  end
end
