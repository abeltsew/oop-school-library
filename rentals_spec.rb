require_relative '../teacher'
require_relative '../rental'
require_relative '../book'

describe Rental do
  context 'Check Teacher creating tasks' do
    it 'should create a Teacher' do
      new_teacher = Teacher.new(12, 'Teacher1', 'PHD')
      new_book = Book.new('Book Title', 'Author Name')
      rentals = Rental.new('06/26/23', new_book, new_teacher)
      expect(rentals.person.name).to eq('Teacher1')
      expect(rentals.book.author).to eq('Author Name')
      expect(new_teacher.rentals[0].book.title).to eq('Book Title')
    end
  end
end