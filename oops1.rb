# Ruby program to understand the concept of
# Class Variables

=begin
class Language
	$reader = 'ABCD'

	# Creating class variable
	@@count = 0
	def initialize(language_name, topic_name)
		@language_name = language_name
		@topic_name = topic_name
		@@count += 1
	end

	# Defining method
	def return_name
		@language_name
	end
	def return_topic
		@topic_name
	end
	
	# Returning class variable
	def return_count
		@@count
	end
end

# Creating object
object1 = Language.new('Ruby', 'method')
# object2 = Language.new('Scala', 'string')
puts 'Language name for object1: '+object1.return_name
puts 'Topic name for object1: '+object1.return_topic

# puts 'Language name for object2: '+object2.return_name
# puts 'Topic name for object2: '+object2.return_topic

puts 'The reader is '+ $reader

puts 'The number of objects created is ' + object1.return_count.to_s
# puts 'The number of objects created is ' + object2.return_count.to_s
=end

=begin
# Ruby program to understand the concept of
# Modifying attributes
class Language
    attr_reader :language_name
    attr_writer :topic_name
    attr_reader :topic_name
def initialize(language_name, topic_name)
        @language_name = language_name
        @topic_name = topic_name
end
end

object = Language.new('Ruby', 'method')
puts 'The name of the language is ' + object.language_name
puts 'The topic of the language is ' + object.topic_name

# changing the topic name
object.topic_name = 'array'
puts 'The new topic of the language is ' + object.topic_name
=end

#INHERITANCE
=begin
class Vehicle
    def initialize(vehicle_name, vehicle_clr)
        @vehicle_name=vehicle_name
        @vehicle_clr=vehicle_clr
    end
    def transport
        puts "This is vehicle"
        puts ""
    end
end
class Car < Vehicle
    def transport
        puts "This is Car"
        super
        puts ""
    end
end
class Bus < Vehicle
    def my_bus
        puts "This is Bus"
    end
end

c = Car.new("car1", "red")
c.transport

b = Bus.new("bus1", "blk")
b.transport
b.my_bus

=end

=begin
# Derived class attributes
# Ruby program of showing Derived class attributes
class Vehicle
	attr_accessor :vehicle_name
	attr_accessor :vehicle_color
	def initialize(vehicle_name, vehicle_color)
		@vehicle_name = vehicle_name
		@vehicle_color = vehicle_color
	end
end

class Car < Vehicle
	attr_accessor :car_model
def initialize(vehicle_name, vehicle_color, car_model)

		# Using super keyword
		super(vehicle_name, vehicle_color)
		@car_model = car_model
	end
end

# creating object
object = Car.new('Nissan', 'white', 'xyz')

# calling object
puts object.vehicle_name
puts object.vehicle_color
puts object.car_model
=end

# Public and Private
# Ruby program of Public and Private method
class Vehicle
	def initialize(vehicle_name, vehicle_color)
		@vehicle_name = vehicle_name
		@vehicle_color = vehicle_color
	end
	
# Using public method
	public
	def display
		greeting
		puts 'Your car details are: '
		puts @vehicle_name
		puts @vehicle_color
	end
	
# Using Private method
	private
	def greeting
		puts 'Hello, user'
	end
end

# Creating object
object = Vehicle.new('Nissan', 'white')

# Calling object
object.display
