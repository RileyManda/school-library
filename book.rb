require_relative 'rental'
class Book
  attr_reader :id
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @id = SecureRandom.uuid
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(person, date)
    rental = Rental.new(date, self, person)
    rentals << rental
    rental
  end
end
