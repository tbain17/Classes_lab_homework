require('minitest/autorun')
require('minitest/reporters')
require_relative('../classes_extension')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestLibrary < Minitest::Test

def setup
@books = [
  {
  title: "Fight Club",
  rental_details: {
    student_name: "Victor",
    date: "02/3/20"
    }
  },
  {
  title: "My Little Pony",
  rental_details: {
    student_name: "Hue",
    date: "21/5/99"
    }
  }]
end






def test_library_books
    library_book = Library.new(@books)
    assert_equal(@books, library_book.books)
end

def test_find_book__book_found
  library_book = Library.new(@books)
  assert_equal(@books[0], library_book.find_book("Fight Club"))
end

def test_find_book__book_not_found
  library_book = Library.new(@books)
  assert_nil(library_book.find_book("How to farm potatoes"))
end

def test_find_book_rental_info
  library_book = Library.new(@books)
  assert_equal(@books[1][:rental_details], library_book.find_book_info("My Little Pony"))
end

def test_find_book_rental_info__not_found
  library_book = Library.new(@books)
  assert_nil(library_book.find_book_info("Cooking in Prison"))
end
end
