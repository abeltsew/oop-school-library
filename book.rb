class Book
  attr_accessor :title, :author

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def rent_book(person, date)
    rental = Rental.new(date, self, person)
  end
end