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

  def find_book_info(book_to_find)
    for book in books
      if book[:title] == book_to_find
        return book[:rental_details]
      end
    end
    return nil
  end

  def add_book_to_library(new_book)
  book_to_add = {title: new_book,
    rental_details: {
      student_name: "",
      date: ""
      }
    }
  @books.push(book_to_add)
  end

  def change_book_details(title, student, date)
    for book in books
      if book[:title] == title
        book[:rental_details][:student_name] = student
        book[:rental_details][:date] = date
      end
    end
    return nil
  end
end
