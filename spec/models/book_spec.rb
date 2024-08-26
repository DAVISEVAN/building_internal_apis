require 'rails_helper'

RSpec.describe Book, type: :model do
  describe 'callbacks' do
    it 'sets popularity to high if number_sold is greater than 5' do
      book = Book.new(title: "Test Book", author: "Author Name", genre: "Fiction", summary: "A great book", number_sold: 10)
      book.save
      expect(book.popularity).to eq('high')
    end

    it 'sets popularity to low if number_sold is 5 or less' do
      book = Book.new(title: "Another Test Book", author: "Another Author", genre: "Non-Fiction", summary: "Another great book", number_sold: 5)
      book.save
      expect(book.popularity).to eq('low')
    end
  end
end
