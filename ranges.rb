=begin
Ranges occur everywhere: January to December, 0 to 9, lines 50 through 67, and so on. Ruby supports ranges and allows us to use ranges in a variety of ways −

>> Ranges as Sequences: Sequences have a start point, an end point (".." & "...")
(1..5)        #==> 1, 2, 3, 4, 5
(1...5)       #==> 1, 2, 3, 4
('a'..'d')    #==> 'a', 'b', 'c', 'd'

>> Ranges as Conditions: Ranges may also be used as conditional expressions. 
while gets
   print if /start/../end/
end
where the first line in each set contains the word start and the last line the word ends 

>> Ranges as Intervals: seeing if some value falls within the interval represented by the range. This is done using ===, the case equality operator.


=end

# Ranges as Sequences
digits = 0..9

puts digits.include?(5)
ret = digits.min
puts "Min value is #{ret}"

ret = digits.max
puts "Max value is #{ret}"

ret = digits.reject {|i| i < 5 }
puts "Rejected values are #{ret}"

digits.each do |digit|
   puts "In Loop #{digit}"
end

range1 = (1..10).to_a
range2 = ('bar'..'bat').to_a

puts "#{range1}"
puts "#{range2}"

# Ranges as Conditions
score = 70
result = case score
   when 0..40 then "Fail"
   when 41..60 then "Pass"
   when 61..70 then "Pass with Merit"
   when 71..100 then "Pass with Distinction"
   else "Invalid Score"
end

puts result  #Pass with Merit

# Ranges as Intervals
if ((1..10) === 5)
    puts "5 lies in (1..10)"
end
 
if (('a'..'j') === 'c')
    puts "c lies in ('a'..'j')"
end
 
if (('a'..'j') === 'z')
    puts "z lies in ('a'..'j')"
end
 

