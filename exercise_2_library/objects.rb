require_relative("class")
# require("Time")

book1 = Book.create("book_title_1", "author_1", 1234)
book2 = Book.create("book_title_2", "author_2", 4567)
book3 = Book.create("book_title_3", "author_3", 8912)
book4 = Book.create("book_title_4", "author_4", 3456)



# p book1.lent_out?
# p book1.borrow
# p Book.shelf_reader_class
# p book1.return_book
# p Book.shelf_reader_class
p book1.borrow
p Book.overdue?
