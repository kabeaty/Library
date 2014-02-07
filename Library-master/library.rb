
# Don't forget about getters and setters

class Book
  attr_reader :author, :title, :id

  def initialize(title, author, id = [])
    @title = title
    @author = author
    @id
  end
end

class Borrower
  def initialize(name)
  end
end

class Library
  def initialize(name)
    @books = []
    # tip: probably does something similar to @recipes array
  end

  def books
  end

  def add_book(title, author)
  end

  def check_out_book(book_id, borrower)
  end

  def check_in_book(book)
  end

  def available_books
  end

  def borrowed_books
  end
end
