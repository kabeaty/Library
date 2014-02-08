
# Don't forget about getters and setters

class Book
  attr_reader :title, :author
  attr_accessor :status, :id, :borrower

  def initialize(title, author, id = nil, status = 'available')
    @title = title
    @author = author
    @id = id
    @status = status
    @borrower = nil
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

  #Register new books in library and give them an id.
  def register_new_book(title, author)
    created_book = Book.new(title, author)
    @books.push(created_book)
    created_book.id = created_book.object_id
  end

  #Check out books by ID
  def check_out_book(book_id, borrower)
    @books.each do |book|
      if book_id == book.id
        if book.status == 'available'
          book.check_out
          book.borrower = borrower
          return book
        else
          return nil
        end
      end
    end
  end

  def get_borrower(book_id)
    @books.each do |book|
      if book_id == book.id
        return book.borrower.name
      end
    end
  end

  def check_in_book(book)
  end

  def available_books
  end

  def borrowed_books
  end
end
