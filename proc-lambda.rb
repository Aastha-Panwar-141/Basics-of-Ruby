new_line = "________________________\n\n"

#Block
puts "Blocks"
[1,2,3,7,5].each{
    |n| puts "number is : #{n}"
}

puts new_line 

def yeild_b
    puts "this is method"
    yield 
    puts "this is also method"
end
yeild_b { puts "this is block" }


#Procs
puts new_line
puts "Procs"

proc_me = Proc.new { puts "This is proc" }
proc_me.()  #both works same
proc_me.call


# proc_me_2 = Proc.new { |a, b| puts "a+b = " +(a+b).to_s }
proc_me_2 = Proc.new { |a, b| puts "#{a} + #{b} = " +(a+b).to_s }
proc_me_2.call(5,6)

puts new_line

def proc_me_3
    proc_demo = Proc.new {return "I am again a proc"}
    # proc_demo = Proc.new {puts  "I am again a proc2"}

    proc_demo.call  #this is kind a return statement, not go to next line
    puts "i am so kind"
end
puts proc_me_3


#Lambdas
puts new_line
puts "Lambda"

lambda1 = lambda {puts "This is lambda"}
lambda1.call  #This is lambda

def new_lambda
    lambda_demo = lambda { return "Only i print!"}
    lambda_demo.call
    "I am back" # Reached
end
puts new_lambda  #I am back


#Arrow Function
puts new_line
puts "Arrow function"

arrowfun = -> {puts "This is arrow function"}
arrowfun.call  #This is arrow function

arrowfun2 = ->(a,b) {puts "a+b="+(a+b).to_s}
arrowfun2.call(4,5)  #a+b=9


#Collect method
puts new_line
puts "Collect method x * 2"

num = [4,8,9,5]
puts num.collect { |n| "No. * 2 = #{n*2}"}  #8, 16, 18, 10

#Ampersand notation
puts new_line
puts "Ampersand notation"

def amper(&am_block)
    am_block.call
end

amper { puts "I am amper block"}  #I am amper block