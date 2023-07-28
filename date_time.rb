=begin
GMT: Greenwich Time
UCT: Co-ordinated Universal Time
Epoch: January 1st, 1970(UCT)

#TIME
Time.new(YYYY, MM, hour, min, sec, 'Time zone')
Time.new(2023, 9, 30, 05, 2, 34, '+02:00')  #2023-09-30 05:02:34 +0200
Time.new(2023, 9, 30, 05, 2, 34)  #2023-09-30 05:02:34 +0530
Time.new(2023, 9, 30)  #2023-09-30 00:00:00 +0530
Time.new(2023)  #2023-01-01 00:00:00 +0530
Time.new  # give us the current date and time


#DATE
Date.new(yyyy, mm, dd)

#DATETIME
DateTime.new(yyyy, mm, dd, hh, mm, ss, 'Timezone')

=end

time = Time.new(2023, 9, 30, 05, 2, 34, '+02:00')  #2023-09-30 05:02:34 +0200
t2 = Time.new(2023, 9, 30, 05, 2, 34)  #2023-09-30 05:02:34 +0530
t3 = Time.new
puts t3.month
puts t3.day
puts t3.hour
puts t3.min
puts t3.sec
puts t3.zone
puts t3.wday   #4  - what day(0-6)
puts t3.yday   #187  - year day(0-364)
puts t3.usec   #537214  - microseconds
puts t3.monday?  #false
puts t3.dst?   #false, day light saving tym
puts t3.subsec   #85313583/1000000000
puts t3.to_a  #convert into array
puts t3.to_i 
puts t3.to_f
puts t3.localtime   #2023-07-06 17:43:45 +0530
puts t3.ctime   #Thu Jul  6 17:45:35 2023
puts t3.strftime("%Y-%m-%d %H:%M:%S")


=begin
t4 = t3 + 1000
puts t4

puts t3 <=> t4  #-1 
puts t3 <=> t3  #0
puts t4 <=> t3  #1

#DATE
require 'date'

date = Date.new 
puts date  #-4712-01-01 (garbage value)
=end
