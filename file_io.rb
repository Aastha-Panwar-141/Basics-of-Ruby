=begin 
#OPENING A FILE
Difference between both the methods is that File.open method can be associated with a block while File.new method can't.

File.new method 
File.open method 

Difference between both the methods is that File.open method can be 
associated with a block while File.new method can't.

Syntax:
f = File.new("fileName.rb")  
File.open("fileName.rb", "mode") do |f|  

#READING FILE
There are three different methods to read a file.
To return a single line, following syntax is used.

f.gets   #To return a single line
 code...  
f.read   #To return the whole file after the current position
 code...  
f.readlines #To return file as an array of lines 
 [code...]  



# File.open("folder_name/files/employee.txt")
File.open("employee.txt", "r") do |file| #r=read the file

    # puts file.read().include? "Aastha"  #read= reading the entire file
    # puts file.read().include? "Aastha"  #true

    # puts file.readline()  #read only first line from file
    # puts file.readline()  #read next line from the first
    # puts file.readlines() #return an array of all of the lines

    # puts file.readchar()  #read first character ie. a
    # puts file.readchar()  #read first character ie. a
    # puts file.readchar()  #read first character ie. s

    # for line in file.readlines()  #return an array of all of the lines
    #     puts line
    # end
end
=end

=begin
#reading a file using a another variable 
file = File.open("employee.txt", "r")
puts file.read  #returns all content of the file

r = read-only
a =  append
w = write/overrite/create a new file
r+ = read + write
=end

#WRITING TO FILES
# file = File.open("employee.txt", "a")
# puts file.write("akshat, bcom")  #append this in same line in the file
# puts file.write("\nneha, bcom")  #append this in next line in the file

# file = File.open("employee.txt", "w")
# puts file.write("akshat, bcom")  #overrite this 2 names with whole content of file
# puts file.write("\nneha, bcom") 

# file = File.open("index.html", "w")
# puts file.write("<h1>Hello astha</h1>")  #create a new file and write the content in that file

file = File.open("employee.txt", "r+")
puts file.readline()  #move cursor to the new line
puts file.readchar()  #move cursor to the next character

# puts file.write("overridden")
puts file.write("hii")  #will override the txt of next line ie. hiirridden as my second line text is overridden

=begin
#The sysread Method
The sysread method is also used to read the content of a file. 
With the help of this method you can open a file in any mode.
   content = aFile.sysread(40)   
   puts content 
The argument 40 will print till 40 characters from the file.

#The syswrite Method
With the help of syswrite method, you can write content into a file. 
File needs to be opened in write mode for this method.
   aFile.syswrite("New content is written in this file.\n")   

#Ruby renaming and deleting a file
File.rename("olderName.txt", "newName.txt")  
File.delete("filename.txt")  

  

=end

puts("fghkj")