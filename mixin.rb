=begin
# Mixins give us a controlled way of adding functionality of clases.
# Ruby does not support multiple inheritance directly. 
# But mixin provide a facility that eliminates the problem of multiple 
# inheritance by adding property of such inheritance to the classes.
module A
    def a1
        puts "a1 method of A module"
    end
    def a2
        puts "a2 method of A module"
    end
end
module B
    def b1
        puts "b1 method of B module"
    end
    def b2
        puts "b2 method of B module"
    end
end
class Sample
    include A
    include B
end
s = Sample.new
s.a1
s.a2
s.b1
s.b2

# a1 method of A module
# a2 method of A module
# b1 method of B module
# b2 method of B module
=end

# Ruby program of using mixins
module Greeting
	def display
		puts 'Hello'
	end
end
	
class Greetuser
	# include Greeting
    include Greeting

	attr_reader :name
	def initialize(name)
		@name = name
	end
end
	
# Creating object
object = Greetuser.new('aastha')

# Calling object
object.display
puts object.name
