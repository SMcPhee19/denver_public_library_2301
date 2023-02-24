class Book
  attr_reader :title,
              :author,
              :publication_year
  def initialize(data)
    @author_last_name = data[:author_last_name]
    @author_first_name = data[:author_first_name]
    @title = data[:title]
    @author = "#{data[:author_first_name]} #{data[:author_last_name]}"
    @publication_year = data[:publication_date].split.last
  end

  

end