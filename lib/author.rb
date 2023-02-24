class Author
  attr_reader :name, :books
  def initialize(author_data)
    @first_name = author_data[:first_name]
    @last_name = author_data[:last_name]
    @name = "#{author_data[:first_name]} #{author_data[:last_name]}"
    @books = []
  end
  
  def write(new_title, new_publication_year)
    new_book = Book.new({author_first_name: @first_name, author_last_name: @last_name, title: new_title, publication_date: new_publication_year})
    @books << new_book
    new_book
  end
end
