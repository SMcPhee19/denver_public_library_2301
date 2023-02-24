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
      expect(charlotte_bronte.write("Villette", "1853")).to be_a Book
    end

    it 'books can be added to the array'
    charlotte_bronte.write("Villette", "1853")
    books << Villette
  end
end