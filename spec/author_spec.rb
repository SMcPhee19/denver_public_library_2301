require 'rspec'
require './lib/book'
require './lib/author'

RSpec.describe Author do
  let (:charlotte_bronte) {Author.new({first_name: "Charlotte", last_name: "Bronte"})}

  describe "#it exists with attributes" do

    it 'exists' do
      expect(charlotte_bronte).to be_a Author
    end

    it 'the author has a name' do 
      expect(charlotte_bronte.name).to eq("Charlotte Bronte")
    end

    it 'the author starts with an empty array of books' do
      expect(charlotte_bronte.books).to eq([])
    end
  end

  describe "#author can write books" do
    it 'can write books' do
      jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")

      expect(jane_eyre.class).to eq(Book)
      expect(jane_eyre.title).to eq("Jane Eyre")
    end

    it 'books can be added to the array' do
      jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
      villette = charlotte_bronte.write("Villette", "1853")
      
      expect(charlotte_bronte.books).to eq([jane_eyre, villette])
    end
  end
end