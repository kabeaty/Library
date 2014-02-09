class Book
  attr_reader :title, :author
  attr_accessor :status, :id, :borrower, :year_published, :edition, :reviews

  def initialize(title, author, id = nil, status = 'available')
    @title = title
    @author = author
    @id = id
    @status = status
    @borrower = nil
    @year_published = nil
    @edition = nil
    @reviews = []
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

  #Borrowers can add reviews to books. Written review optional.
  def add_review(borrower, rating, written_review = nil)
      review_info = []
      review_info.push(borrower.name).push(self.title).push(rating)
      if written_review != nil
        review_info.push(written_review)
        self.reviews.push(review_info)
      else
        self.reviews.push(review_info)
      end
  end

end

class Borrower
  attr_reader :name
  attr_accessor :num_books

  def initialize(name)
    @name = name
    @num_books = 0
  end

end

class Library
  attr_accessor :books, :available_books, :borrowed_books

  def initialize
    @books = []
    @available_books = []
    @borrowed_books = []
  end

  #Register new books in library and give them an id.
  def register_new_book(title, author)
    created_book = Book.new(title, author)
    @books.push(created_book)
    @available_books.push(created_book)
    created_book.id = created_book.object_id
  end

  #Check out books by ID. Doesn't let borrower check out more than 2 books at a time.
  def check_out_book(book_id, borrower)
    @books.each do |book|
      if book_id == book.id
        if book.status == 'available'
          book.borrower = borrower
          borrower.num_books += 1
          if borrower.num_books >=3
            borrower.num_books -= 1
            book.borrower = nil
            return nil
          else
            book.check_out
            @available_books.delete(book)
            @borrowed_books.push(book)
            return book
          end
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
    book.borrower = nil
    book.status = 'available'
  end

end
