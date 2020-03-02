class Library
attr_accessor :books
  def initialize(books)

    @books = books
  end

def find_book(book_to_find)
  for book in books
    if book[:title] == book_to_find
      return book
    end
  end
  return nil
end

end
