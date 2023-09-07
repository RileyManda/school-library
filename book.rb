require_relative 'rental'
require 'securerandom'
class Book
  attr_reader :id
  attr_accessor :title, :author, :rentals

  def initialize(title, _author)
    @id = generate_id
    @title = title
    @author =
      @rentals = []
  end

  def add_rental(person, date)
    Rental.new(date, person, self)
  end

  def generate_id
    SecureRandom.uuid
  end
end
