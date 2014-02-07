
# Don't forget about getters and setters

class Book
  attr_reader :author, :title, :id
  attr_accessor :status

  def initialize(title, author, id = nil, status = 'available')
    @title = title
    @author = author
    @id = id
    @status = status
  end

  # Check out books. Return false if check out twice.
  def check_out
    if self.status != 'checked_out'
      self.status = 'checked_out'
      true
    else
      false
    end
  end

  #Check in books. Return false if book already checked in.
  def check_in
    if self.status != 'available'
      self.status = 'available'
      true
    else
      false
    end
  end

end

class Borrower
  attr_reader :name

  def initialize(name)
    @name = name
  end

end

class Library
  attr_accessor :books

  def initialize
    @books = []
    # tip: probably does something similar to @recipes array
  end

  def register_new_book(title, author)
    counter = 1
    created_book = Book.new(title, author, id = counter)
    @books.push(created_book)
    counter += 1
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
