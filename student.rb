require 'csv'

puts "Student Information: "
print "Enter book id: "
bid = gets.chomp
print "Enter book name: "
bname = gets.chomp
print "Enter book author: "
bauthor = gets.chomp
print "Enter book subject: "
bsub = gets.chomp

#create
CSV.open("library_manage.csv", "a") do |csv|
  csv << ["Book_id", "Book_name", "Book_author", "Book_subject"]
  csv << [bid, bname, bauthor, bsub]
end

#read
lib = CSV.read("library_manage.csv")
puts "Books data: "
lib.each do |lbry|
  bid, bname, bauthor, bsub = lbry
  puts "Book_id: #{bid}, Book_name: #{bname}, Book_author: #{bauthor}, Book_subject: #{bsub}"
end
