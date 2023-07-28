=begin
#Creating Ruby Threads
To start a new thread, just associate a block with a call to Thread.new. 
# Thread #1 is running here
Thread.new {
   # Thread #2 runs this code
}
# Thread #1 runs this code


#Threads and Exceptions
If an exception is raised in the main thread, and is not handled anywhere, 
the Ruby interpreter prints a message and exits. In threads, other than the 
main thread, unhandled exceptions cause the thread to stop running.
If Thread.abort_on_exception is false, the default condition, an unhandled 
exception simply kills the current thread and all the rest continue to run.

If you would like any unhandled exception in any thread to cause the 
interpreter to exit, set the class method Thread.abort_on_exception to true.

t = Thread.new { ... }
t.abort_on_exception = true



=end

# def func1
#     i=0
#     while i<=2
#         puts "func1 at #{Time.now}"
#         sleep(2)
#         i=i+1
#     end
# end

# def func2
#     j=0
#     while j<=2
#         puts "func2 at #{Time.now}"
#         sleep(2)
#         j=j+1
#     end
# end

# puts "started at #{Time.now}"
# #creating new threads using .new, .start, .fork

# t1 = Thread.new{func1()}
# t2 = Thread.start{func2()}
# t2 = Thread.fork{func2()}

# t1.join
# t2.join
# puts "End at #{Time.now}"


# count = 0
# arr = []

# 10.times do |i|
#    arr[i] = Thread.new {
#       sleep(rand(0)/10.0)
#       Thread.current["mycount"] = count
#       count += 1
#    }
# end

# arr.each {|t| t.join; print t["mycount"], ", " }
# puts "count = #{count}"

# #0, 3, 6, 7, 2, 8, 5, 4, 1, 9, count = 10


=begin
# Thread Priorities
You can set and query the priority of a Ruby Thread object with 
priority = and priority. A newly created thread starts at the same priority
as the thread that created it. The main thread starts off at priority 0.

# Thread Exclusion
If two threads share access to the same data, and at least one of the 
threads modifies that data, you must take special care to ensure that no 
thread can ever see the data in an inconsistent state. This is called 
thread exclusion.


Mutex is a class that implements a simple semaphore lock for mutually 
exclusive access to some shared resource. That is, only one thread may 
hold the lock at a given time. Other threads may choose to wait in line 
for the lock to become available, or may simply choose to get an immediate 
error indicating that the lock is not available.

=end


# # Example without Mutax
# require 'thread'

# count1 = count2 = 0
# difference = 0
# counter = Thread.new do
#    loop do
#       count1 += 1
#       count2 += 1
#    end
# end
# spy = Thread.new do
#    loop do
#       difference += (count1 - count2).abs
#    end
# end
# sleep 1
# puts "count1 :  #{count1}"
# puts "count2 :  #{count2}"
# puts "difference : #{difference}"
# output: count1 :  1583766
#         count2 :  1583766
#         difference : 0


# Example with Mutax

# require 'thread'
# mutex = Mutex.new

# count1 = count2 = 0
# difference = 0
# counter = Thread.new do
#    loop do
#       mutex.synchronize do
#          count1 += 1
#          count2 += 1
#       end
#    end
# end
# spy = Thread.new do
#    loop do
#       mutex.synchronize do
#          difference += (count1 - count2).abs
#       end
#    end
# end
# sleep 1
# mutex.lock
# puts "count1 :  #{count1}"
# puts "count2 :  #{count2}"
# puts "difference : #{difference}"


# # output
# # count1 :  696591
# # count2 :  696591
# # difference : 0

# Handling Deadlock

# require 'thread'
# mutex = Mutex.new

# cv = ConditionVariable.new
# a = Thread.new {
#    mutex.synchronize {
#       puts "A: I have critical section, but will wait for cv"
#       cv.wait(mutex)
#       puts "A: I have critical section again! I rule!"
#    }
# }

# puts "(Later, back at the ranch...)"

# b = Thread.new {
#    mutex.synchronize {
#       puts "B: Now I am critical, but am done with cv"
#       cv.signal
#       puts "B: I am still critical, finishing up"
#    }
# }
# a.join
# b.join



# Ruby program to illustrate
# creation of threads

#!/usr/bin/ruby

# first method
def Geeks1
    a = 0
    while a <= 3
    
        puts "Geeks1: #{a}"
    
        # to pause the execution of the current
        # thread for the specified time
        sleep(1)
    
        # incrementing the value of a
        a = a + 1
    end
    
    end
    
    # Second method
    def Geeks2
    b = 0
    
    while b <= 3
    
        puts "Geeks2: #{b}"
    
        # to pause the execution of the current
        # thread for the specified time
        sleep(0.5)
    
        # incrementing the value of a
        b = b + 1
    end
    
    end
    
    # creating thread for first method
    x = Thread.new{Geeks1()}
    
    # creating thread for second method
    y= Thread.new{Geeks2()}
    
    # using Thread.join method to
    # wait for the first thread
    # to finish
    y.priority = 1
    x.priority = 2

    x.join
    
    # using Thread.join method to
    # wait for the second thread
    # to finish
    y.join

    
    
    puts "Process End"
    