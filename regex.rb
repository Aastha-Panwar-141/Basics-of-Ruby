=begin
Ruby regex for short, helps us to find particular patterns inside a string. 
Two uses of ruby regex are Validation and Parsing. 
\w is equivalent to [0-9a-zA-Z_]
\d is the same as [0-9]
\s matches white space
\W anything that’s not in [0-9a-zA-Z_]
\D anything that’s not a number
\S anything that’s not a space


# Find the word 'like'
"Do you like cats?" =~ /like/

if "Do you like cats?".match(/like/)
  puts "Match found!"
end

>>> Character Classes
def contains_vowel(str)
  str =~ /[aeiou]/
end
contains_vowel("test") # returns 1
contains_vowel("sky")  # returns nil

>>> Ranges
[0-9] matches any number from 0 to 9
[a-z] matches any letter from a to z (no caps)
[^a-z] negated range
def contains_number(str)
  str =~ /[0-9]/
end
contains_number("The year is 2015")  # returns 12
contains_number("The cat is black")  # returns nil

>>> Modifiers
+	1 or more
*	0 or more
?	0 or 1
{3,5}	between 3 and 5
def ip_address?(str)
  # We use !! to convert the return value to a boolean
  !!(str =~ /^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}$/)
end
ip_address?("192.168.1.1")  # returns true
ip_address?("0000.0000")    # returns false

>>> Exact String Matching
# We want to find if this string is exactly four letters long, this will
"Regex are cool".match /\w{4}/
# Instead we will use the 'beginning of line' and 'end of line' modifiers
"Regex are cool".match /^\w{4}$/

>>> Capture Groups
Line = Struct.new(:time, :type, :msg)
LOG_FORMAT = /(\d{2}:\d{2}) (\w+) (.*)/
def parse_line(line)
  line.match(LOG_FORMAT) { |m| Line.new(*m.captures) }
end
parse_line("12:41 INFO User has logged in.")
# This produces objects like this:
# 
Example: Named Groups
m = "David 30".match /(?<name>\w+) (?<age>\d+)/
m[:age]
# => "30"
m[:name]
# => "David"

>>> Look Ahead & Look Behind
(?=pat)	    Positive lookahead
(?<=pat)	Positive lookbehind
(?!pat)	    Negative lookahead
(?<!pat)	Negative lookbehind

Example: is there a number preceded by at least one letter?
def number_after_word?(str)
  !!(str =~ /(?<=\w) (\d+)/)
end
number_after_word?("Grade 99")


>>> Ruby’s Regex Class
puts /a/.class
# Regexp
regexp = Regexp.new("a")
regexp = %r{\w+}

>>> Regex Options
To use these options you add the letter at the end of the regex, 
after the closing /.
i	ruby regex case insensitive
m	dot matches newline
x	ignore whitespace

"abc".match?(/[A-Z]/i)


>>> Ruby regex: Putting It All Together
>>> Ruby methods

.split
.scan
.gsub

Example: Match all words from a string using .scan
"this is some string".scan(/\w+/)
# => ["this", "is", "some", "string"]

Example: Extract all the numbers from a string
"The year was 1492.".scan(/\d+/)
# => ["1492"]

Example: Capitalize all words in a string
str = "lord of the rings"
str.gsub(/\w+/) { |w| w.capitalize }
# => "Lord Of The Rings"

Example: Validate an email address
email = "test@example.com"
!!email.match(/\A[\w.+-]+@\w+\.\w+\z/)
# true



=end
# Ruby program of regular expression

a="bb"
b= 2.5
=begin
if(b.match(/\d.\d/))
    puts "found"
else
    puts "not found"
end
=end



