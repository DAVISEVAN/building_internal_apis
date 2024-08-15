require 'rails_helper'

RSpec.describe Book, type: :model do
  describe 'before_save callback' do
    before(:each) do
      @book = create(:book, number_sold: number_sold)
    end

    context 'when number_sold is greater than 5' do
      let(:number_sold) { 6 }

      it 'sets popularity to "high"' do
        expect(@book.popularity).to eq('high')
      end
    end

    context 'when number_sold is 5 or less' do
      let(:number_sold) { 5 }

      it 'sets popularity to "low"' do
        expect(@book.popularity).to eq('low')
      end
    end
  end
end
