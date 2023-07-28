=begin
Iteration means doing one thing many times like a loop.
They return all the elements from a collection, one after the other.
Arrays and hashes come in the category of collection.

>>> Each Iterator
syntax:
(collection).each do |variable|  
  code...  
end  
Here collection can be any array, range or hash.

(1...5).each do |i|   
   puts i   
end   


>>> Times Iterator
Loop will start from zero till one less than specified number.
5.times do |n|   
  puts n   
end   

>>> Upto Iterators
An upto iterator iterates from number x to number y.
1.upto(5) do |n|   
  puts n   
end  

>>> Downto Iterators
An upto iterator iterates from number x to number y.
5.downto(1) do |n|   
    puts n   
end

>>> Step Iterator
iterate while skipping over a range.
syntax:
(controller).step(x) do |variable|  
  code  
end  

(10..50).step(5) do |n|   
  puts n   
end  


>>> Each_Line Iterator
A each_line iterator is used to iterate over a new line in a string.
"All\nthe\nwords\nare\nprinted\nin\na\nnew\line.".each_line do |line|   
puts line   
end  

=end


arr = [5,6,5,7,8]
(arr).each do |i|   
    puts i   
end   


5.times do |n|   
    puts n   
end   

1.upto(5) do |n|   
    puts n   
end  
  
5.downto(1) do |n|   
    puts n   
end  
  
(10..50).step(5) do |n|   
    puts n   
end  

"All\nthe\nwords\nare\nprinted\nin\na\nnew\line.".each_line do |line|   
    puts line   
end  
    