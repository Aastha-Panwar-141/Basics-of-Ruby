# puts "Hello world";
# puts "This is main Ruby Program"

# a=1
# b=2
# c=a+b
# puts "the sum of #{a}+#{b}=#{c}"

# print "aastha"

# Ruby BEGIN Statement
# BEGIN {
#    puts "Initializing Ruby Program"
# }


# Ruby END Statement
# END {
#     puts "Ending Ruby Program"
# }

# Ruby Comments

# I am a comment. Just ignore me.
# name = "Madisetti" # This is again comment

=begin
This is a comment.
This is a comment, too.
This is a comment, too.
I said that already.
=end


# class Customer
#     @@no_of_customers = 0
#     def initialize(id, name, addr)
#        @@no_of_customers += 1
#        @cust_id = id
#        @cust_name = name
#        @cust_addr = addr
#     end
#     def display_details()
#        puts "Customer id #@cust_id"
#        puts "Customer name #@cust_name"
#        puts "Customer address #@cust_addr"
#     end
#     def total_no_of_customers()
#        puts "Total number of customers: #@@no_of_customers"
#     end
#  end
 
#  # Create Objects
#  cust1 = Customer.new("1", "Aastha", "Indore, MP")
#  cust2 = Customer.new("2", "Dishika", "New Empire road, UK")
 
#  # Call Methods
#  cust1.display_details()
#  cust1.total_no_of_customers()
#  cust2.display_details()
#  cust2.total_no_of_customers()
 
#  cust3 = Customer.new("3", "Kanan", "Madapur, Hyderabad")
#  cust4 = Customer.new("4", "Naman", "Akkayya palem, Vishakhapatnam")
#  cust3.display_details()
#  cust3.total_no_of_customers()
#  cust4.display_details()
#  cust4.total_no_of_customers()


#SWAPPING OF TWO NUMBERS
# a=5
# b=10
# puts "#{a} #{b}"   #5 10
# puts "#{b} #{a}"   #10 5


# x=1
# y=2
# z=3
# puts "#{x} #{y} #{z}"  #1 2 3 
# puts "#{z} #{y} #{x}"  #3 2 1


#OPERATORS(+,-,*,/,%)
# a=100
# b=50
# puts a+b  #150
# puts a-b  #50
# puts a/b  #2
# puts a*b  #5000
# puts a%b  #0

#CONDITIONS(&&-and, ||-or)
# c= true && false
# puts c  #false

# c= true || false
# puts c  #true

#IF- ELSIF-ELSE
# grade=90

# if grade >=90
#     puts "A+"
# elsif grade >=90 && grade <=89
#     puts "A"
# else
#     puts "B+"
# end


#WHILE
# i=1
# while i<=10
#     puts i 
#     i+=1
# end


#CONVERTING INTO ARRAY BY USING '.to_a'
# puts (1..10).to_a   #print from 1 to 10, include the last range
# puts (1...10).to_a    #print 1 to 9, exclude the last range


#FOR LOOP
# for i in (1..5).to_a
#     puts i   # prints from 1 to 5
# end

#SWITCH CASE
# grade=50

# case grade
# when 90..100
#     puts "A+"
# when 89..75
#     puts "A"
# when 75..50
#     puts "B+"
# else
#     puts "Improve"
# end

#ARRAY
# nums = [1,2,3]
# nums1 = ["aastha", "naman", "dishika"]

# puts nums  #prints 1 2 3 in diff. line
# puts "#{nums}"  #prints [1, 2, 3]
# puts "#{nums1}"  #prints ["aastha", "naman", "dishika"]

# STRING METHODS
# name = "Aastha"

# to Get The String Length
# puts name.size #6
# to Check If A String Is Empty
# puts "".size ==0   #true
# puts name.empty?   #false
# puts "".empty?   #true
# puts "  ".empty?   #flase

# String Interpolation- llows you to combine strings together

# puts "Hello #{name}"  #Hello Aastha
# puts "the total is #{5+5}"  #the total is 10

#get a substring
# puts name[0,3]  #Aas 