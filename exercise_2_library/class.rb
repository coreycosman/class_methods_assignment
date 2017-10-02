class Book
#class variables
@@on_shelf = []
@@on_loan = []
#___________________________
#class methods:

#create objects
def self.create(title, author, isbn_number)
book = Book.new(name, author, isbn_number)
@@on_shelf << book
return book
end

def self.overdue?
  @@on_loan.each do |v|
  v.due_date_reader
    if  v.due_date_reader < Time.now
    # puts "return book!"
    end
  end
end

#shelf reader
def self.shelf_reader_class
  @@on_shelf
end

#loan reader
def self.loan_reader_class
  @@on_loan
end
#shelf browser
def self.browse
  @@on_shelf.sample
end
#---------------------------------------------------------
#instance methods

#initialize objects
def initialize(title, author, isbn_number)
  @title = title
  @author = author
  @isbn_number = isbn_number
  @lent_out = false
  @due_date = nil
end
# instance shelf reader
def lent_out?
  @lent_out
end

def lent_out
  if @lent_out == false
  @lent_out = true
  end
end

def due_date_writer(str)
  @due_date = str
end

def due_date_reader
  @due_date
end

def due_date_assigner
  if @lent_out == true
  due_date_writer(Time.now - 3600 * 24)
  puts "this book is due in 24 hrs"

  end
end

def borrow
  lent_out
  @@on_loan << self
  @@on_shelf.delete(self)
  due_date_assigner
  return @@on_loan
end

def return_book
    lent_out?
    if @lent_out == true
    @@on_shelf << self
    @@on_load.delete(self)
    @due_date = nil
    return @@on_shelf
    end
end


end
