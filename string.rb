#!/usr/bin/ruby 

=begin
puts 'Hello everyone'   
puts "Hello everyone"  

msg = "This tutorial is from JavaTpoint."   
  
puts msg["JavaTpoint"]   
puts msg["tutorial"]   
  
puts msg[0]   
  
puts msg[0, 2]   
puts msg[0..19]   
puts msg[0, msg.length]   
puts msg[-3]  

# Multiline string
# String can be written within double quotes.
# The % character is used and string is enclosed within / character.
# In heredoc syntax, we use << and string is enclosed within word STRING.

puts "   
A   
AB   
ABC   
ABCD"   
  
puts %/   
A   
AB   
ABC   
ABCD/   
  
puts << STRING   
A   
AB   
ABC   
ABCD   
STRING  


#Variable Interpolation
country = "India"   
capital = "New Delhi"   
  
puts "#{capital} is the capital of #{country}."  

# Concatenating Strings
# Using plus sign in between strings.
# Using a single space in between strings.
# Using << sign in between strings.
# Using concat method in between strings.
string = "This is Ruby Tutorial" + " from JavaTpoint." + " Wish you all good luck."   
puts string   
  
string = "This is Ruby Tutorial" " from JavaTpoint." " Wish you all good luck."   
puts string   
  
string = "This is Ruby Tutorial" << " from JavaTpoint." << " Wish you all good luck."   
puts string   
  
string = "This is Ruby Tutorial".concat(" from JavaTpoint.").concat(" Wish you all good luck.")   
puts string  

=end


# Freezing Strings
str = "Original string"   
str << " is modified "   
str << "is again modified"   
  
puts str   
  
str.freeze   
  
# str << "And here modification will be failed after using freeze method"  

# Comparing Strings

# With == operator : Returns true or false
# With eql? Operator : Returns true or false
# With casecmp method : Returns 0 if matched or 1 if not matched

puts "abc" == "abc"   
puts "as ab" == "ab ab"   
puts "23" == "32"   
  
puts "ttt".eql? "ttt"   
puts "12".eql? "12"   
  
puts "Java".casecmp "Java"   
puts "Java".casecmp "java"   
puts "Java".casecmp "ja"  