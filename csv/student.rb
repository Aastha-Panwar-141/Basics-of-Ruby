# book_catalog.rb

module BookCatalog
    @books = []
  
    Book = Struct.new(:title, :author, :genre, :year_published)
  
    def self.add_book(title, author, genre, year_published)
      book = Book.new(title, author, genre, year_published)
      @books << book
      puts "Book added successfully!"
    end
  
    def self.update_book(title, new_title, new_author, new_genre, new_year_published)
      book = find_book_by_title(title)
      if book
        book.title = new_title
        book.author = new_author
        book.genre = new_genre
        book.year_published = new_year_published
        puts "Book updated successfully!"
      else
        puts "Book not found."
      end
    end
  
    def self.delete_book(title)
      book = find_book_by_title(title)
      if book
        @books.delete(book)
        puts "Book deleted successfully!"
      else
        puts "Book not found."
      end
    end
  
    def self.search_by_title(title)
      book = find_book_by_title(title)
      if book
        display_book_info(book)
      else
        puts "Book not found."
      end
    end
  
    def self.search_by_author(author)
      books = find_books_by_author(author)
      if books.any?
        display_books_info(books)
      else
        puts "No books found."
      end
    end
  
    def self.search_by_genre(genre)
      books = find_books_by_genre(genre)
      if books.any?
        display_books_info(books)
      else
        puts "No books found."
      end
    end
  
    def self.display_catalog
      if @books.any?
        display_books_info(@books)
      else
        puts "The catalog is empty."
      end
    end
  
    def self.export_catalog
      if @books.any?
        File.open("catalog.txt", "w") do |file|
          file.puts "Title\tAuthor\tGenre\tYear Published"
          @books.each do |book|
            file.puts "#{book.title}\t#{book.author}\t#{book.genre}\t#{book.year_published}"
          end
        end
        puts "Catalog exported successfully!"
      else
        puts "The catalog is empty."
      end
    end
  
    private
  
    def self.find_book_by_title(title)
      @books.find { |book| book.title.downcase == title.downcase }
    end
  
    def self.find_books_by_author(author)
      @books.select { |book| book.author.downcase.include?(author.downcase) }
    end
  
    def self.find_books_by_genre(genre)
      @books.select { |book| book.genre.downcase.include?(genre.downcase) }
    end
  
    def self.display_book_info(book)
      puts "Title: #{book.title}"
      puts "Author: #{book.author}"
      puts "Genre: #{book.genre}"
      puts "Year Published: #{book.year_published}"
    end
  
    def self.display_books_info(books)
      puts "Catalog:"
      puts "Title\t\tAuthor\t\tGenre\t\tYear Published"
      puts "-" * 80
      books.each do |book|
        puts "#{book.title}\t#{book.author}\t#{book.genre}\t#{book.year_published}"
      end
      puts "-" * 80
    end
  end
  
  