# main.rb
  
require_relative 'student'
  
def display_menu
  puts "Main Menu:"
  puts "1. Add a book"
  puts "2. Update a book"
  puts "3. Delete a book"
  puts "4. Search by title"
  puts "5. Search by author"
  puts "6. Search by genre"
  puts "7. Display catalog"
  puts "8. Export catalog"
  puts "9. Exit"
  print "Please enter your choice: "
end

loop do
  display_menu
  choice = gets.chomp.to_i

  case choice
  when 1
    print "Enter the title: "
    title = gets.chomp
    print "Enter the author: "
    author = gets.chomp
    print "Enter the genre: "
    genre = gets.chomp
    print "Enter the year published: "
    year_published = gets.chomp.to_i

    BookCatalog.add_book(title, author, genre, year_published)
  when 2
    print "Enter the title of the book to update: "
    title = gets.chomp
    print "Enter the new title: "
    new_title = gets.chomp
    print "Enter the new author: "
    new_author = gets.chomp
    print "Enter the new genre: "
    new_genre = gets.chomp
    print "Enter the new year published: "
    new_year_published = gets.chomp.to_i

    BookCatalog.update_book(title, new_title, new_author, new_genre, new_year_published)
  when 3
    print "Enter the title of the book to delete: "
    title = gets.chomp

    BookCatalog.delete_book(title)
  when 4
    print "Enter the title to search: "
    title = gets.chomp

    BookCatalog.search_by_title(title)
  when 5
    print "Enter the author to search: "
    author = gets.chomp

    BookCatalog.search_by_author(author)
  when 6
    print "Enter the genre to search: "
    genre = gets.chomp

    BookCatalog.search_by_genre(genre)
  when 7
    BookCatalog.display_catalog
  when 8
    BookCatalog.export_catalog
  when 9
    puts "Goodbye!"
    break
  else
    puts "Invalid choice. Please try again."
  end

  puts
end