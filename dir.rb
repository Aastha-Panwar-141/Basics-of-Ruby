Class Dir has directory streams as objects which represents directories 
in underlying file system.
Directories are handled with Dir class.

>>> CREATE
Dir.mkdir "dirName" , permission  

>>> CHECK EXUSTENCE
puts Dir.exists? "dirName"  #true

>>> Current Working Directory 
puts Dir.pwd   #/home/scsit/Desktop

>>> Removing/ Deleting
Dir.rmdir "dirName"  

on cmd - ruby hello.txt and put above codes in that file

