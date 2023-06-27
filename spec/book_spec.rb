require_relative '../book'

describe Book do
  context 'Should create a book' do
    it 'should have the correct title' do
      new_book = Book.new('Title', 'Author')
      expect(new_book.title).to eq('Title')
    end
  end
  context 'Should create a book' do
    it 'should have the correct title' do
      new_book = Book.new('Title', 'Author')
      expect(new_book.author).to eq('Author')
    end
  end
end
