score =0

puts "Welcome to my quiz game"
puts "Enter your name to start the game."

name = gets.chomp()

puts "Try to answer questions correctly as many as you can."

#writing questions

puts "What is the name of the owner of the Amazon:"
first = gets.chomp()
if first == "jeff bezos"
    puts "correct answer"
    score +=1
else
    puts "Wrong answer"
end

puts "What is the name of the owner of the Telsan company:"
second = gets.chomp()
if second == "elon musk"
    puts "correct answer"
    score +=1
else
    puts "Wrong answer"
end

puts "What is the most easy programming language:"
third = gets.chomp()
if third == "java"
    puts "correct answer"
    score +=1
else
    puts "Wrong answer"
end

puts "What is the name of the owner of the Fb:"
fourth = gets.chomp()
if fourth == "mark zuckberg"
    puts "correct answer"
    score +=1
else
    puts "Wrong answer"
end

puts "What is the name of the owner of the Google:"
fifth = gets.chomp()
if fifth == "sundar pichai"
    puts "correct answer"
    score +=1
else
    puts "Wrong answer"
end

puts "#{name} Your score is "+ score.to_s