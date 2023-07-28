# arr =[1,2,3,'aastha',nil,[5,6], true, false, 'naman']

=begin
# Creating Arrays
-Using literal constructor []  = exm = [4, 4.0, "Jose", ]   
-Using new class method  = arrayName = Array.new  or arrayName = Array.new(10)  


# Accessing Array Elements

days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]   

#[] method  eg. days[0] , days[2, 3], days[1..7]
at method  eg. days.at(0)
slice method - similar to #[] method
fetch method - days.fetch(10)
first and last method - days.first and days.last

take method - The take method returns the first n elements of an array.
days.take(2) - Mon, Tue

drop method - The drop method is the opposite of take method. It returns elements after n elements have been dropped.
days.drop(5) - sat, sun


# Adding Items to Array

push or << - Using push or <<, items can be added at the end of an array.
days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]   
puts days.push("Today")   
puts days << ("Tomorrow")   

unshift - a new element can be added at the beginning of an array.
days = ["Fri", "Sat", "Sun"]   
puts days.unshift("Today")   

insert - a new element can be added at any position in an array.
days = ["Fri", "Sat", "Sun"]   
puts days.insert(2, "Thursday")   


# Removing Items from Array

pop - items can be removed from the end of an array. It returns the removed item.
days = ["Fri", "Sat", "Sun"]   
puts days.pop    # sun

shift - items can be removed from the start of an array. It returns the removed item.
days = ["Fri", "Sat", "Sun"]   
puts days.shift  # fri  

delete - items can be removed from anywhere in an array. It returns the removed item.
days = ["Fri", "Sat", "Sun"]   
puts days.delete("Sat")    # sat

uniq - duplicate elements can be removed from an array. It returns the remaining array.
days = ["Fri", "Sat", "Sun", "Sat"]   
puts days.uniq  # fri, sat, sun 

=begin
