# CLASS
# class Box
#   puts "inside class Box"
# end
# OBJECT
# box1 = Box.new
# box2 = Box.new
# SETTER
# class Box
#    def initialize(w,h)
#       @width, @height = w, h
#    end
# end
# INSTANCE VARIABLE
# class Box
#    def initialize(w,h)
#       # assign instance variables
#       @width, @height = w, h
#    end
# end
# #GETTER AND SETTER
# class Box
#   #CONSTRUCTOR
#    def initialize(w,h)
#       @width, @height = w, h
#    end
#    #GETTER
#    def printWidth
#       puts " width is "+@width.to_s
#    end
#    def printHeight
#      puts " Height is "+@height.to_s
#    end
# end
# # create an object
# box = Box.new(10, 20)
# # use accessor methods
# box.printWidth()
# box.printHeight()
# # define a class
# class Box
#    # constructor method
#    def initialize(w,h)
#       @width, @height = w, h
#    end
#    # accessor methods
#    def getWidth
#       @width
#    end
#    def getHeight
#       @height
#    end
#    # setter methods
#    def setWidth=(value)
#       @width = value
#    end
#    def setHeight=(value)
#       @height = value
#    end
# end
# # create an object for default values
# box = Box.new(10, 20)
# # use setter methods for Value updation
# box.setWidth = 30
# box.setHeight = 50
# # use accessor methods
# x = box.getWidth()
# y = box.getHeight()
# puts "Width of the box is : #{x}"
# puts "Height of the box is : #{y}"
# INSTANCE METHOD
# # define a class
# class Box
#    # instance method
#    def getArea(w,h)
#         @width, @height = w, h
#         a = @width*@height
#         puts "Area of the box is : #{a}"
#    end
# end
# # create an object
# box = Box.new
# # call instance methods
# box.getArea(10,20)
#THE CLASS METHODS AND VARIABLES
# class Box
#    # Initialize our class variables
#    @@count = 0
#   @@wid =0
#    def initialize(w,h)
#       # assign instance avriables
#       @width, @height = w, h
#       @@wid+=@width
#       @@count += 1
#    end
#    def self.printCount()
#       puts "Box count is : #@@count"
#       puts "Box total width : #@@wid"
#    end
# end
# # create two object
# box1 = Box.new(10, 20)
# box2 = Box.new(30, 100)
# box3 = Box.new(50, 100)
# box4 = Box.new(70, 100)
# # box5 = Box.new(90, 100)
# # box6 = Box.new(110, 100)
# # box7 = Box.new(130, 100)
# # box8 = Box.new(150, 100)
# # box9 = Box.new(170, 100)
# # box10 = Box.new(190, 100)
# # call class method to print box count
# Box.printCount()
#ACCESS CONTROL
# # define a class
# class Box
#    # constructor method
#    def initialize(w,h)
#       @width, @height = w, h
#    end
#    # instance method by default it is public
#    def getArea
#       getWidth() * getHeight
#    end
#    # define private accessor methods
#    def getWidth
#       @width
#    end
#    def getHeight
#       @height
#    end
#    # make them private
#    private :getWidth, :getHeight
#    # instance method to print area
#    def printArea
#       @area = getWidth() * getHeight
#       puts "Big box area is : #@area"
#    end
#    # make it protected
#    protected :printArea
# end
# # create an object
# box = Box.new(10, 20)
# # call instance methods
# a = box.getArea()
# puts "Area of the box is : #{a}"
# # try to call protected or methods but at the end it does not able to be 
# accesssed
# box.printArea()
# #INHERITANCE
# # define a class
# class Box
#    # constructor method
#    def initialize(w,h)
#       @width, @height = w, h
#    end
#    # instance method
#    def printArea
#       @width * @height
#    end
# end
# # define a subclass
# class BigBox < Box
#    # add a new instance method
#    def printArea
#       @area = @width + @height
#       puts "Big box area is : #@area"
#    end
# end
# # create an object
# box = BigBox.new(10, 20)
# # print the area
# box.printArea()
# class Parent
#     def initialize
#         puts "Parent class created"
#     end
# end
# class Child < Parent
#    def initialize
#        self
#        puts "Child class created"
#    end
# end
# Parent.new
# Child.new
# # Ruby program of Inheritance
# class Vehicle
#    def initialize(vehicle_name, vehicle_color)
#       @vehicle_name = vehicle_name
#       @vehicle_color = vehicle_color
#    end
#    def description
#       puts 'This is a vehicle'
#    end
# end
# Inheritance example
# class Vehicle
#     def initialize(vehicle_name, vehicle_color)
#         @vehicle_name = vehicle_name
#         @vehicle_color = vehicle_color
#     end
#     def description
#         puts 'This is a vehicle'
#     end
# end
# # Using inheritance
# class Car < Vehicle
#     def description
#         puts 'This is a car'
#             super #<---------------------------
#     end
# end
# # Using inheritance
# class Bus < Vehicle
#     def display_this
#         puts 'This is a bus'
#     end
# end
# # creating object
# object1 = Car.new('Nissan', 'red')
# object2 = Bus.new('Volvo', 'white')
# # Calling object
# object1.description
# object2.description
# object2.display_this
# Derived class attributes
# class Vehicle
#     attr_accessor :vehicle_name
#     attr_accessor :vehicle_color
#     def initialize(vehicle_name, vehicle_color)
#         @vehicle_name = vehicle_name
#         @vehicle_color = vehicle_color
#     end
# end
# class Car < Vehicle
#      attr_accessor :car_model
#   def initialize(vehicle_name, vehicle_color, car_model)
#         # Using super keyword
#         super(vehicle_name, vehicle_color)
#         @car_model = car_model
#     end
# end
# # creating object
# object = Car.new('Nissan', 'white', 'xyz')
# # calling object
# puts object.vehicle_name
# puts object.vehicle_color
# puts object.car_model
# # public and private
# class Vehicle
#     def initialize(vehicle_name, vehicle_color)
#         @vehicle_name = vehicle_name
#         @vehicle_color = vehicle_color
#     end
#   # Using public method
#     public
#     def display
#         greeting  #<----------------------------------------------------
#         puts 'Your car details are: '
#         puts @vehicle_name
#         puts @vehicle_color
#     end
#    # Using Private method
#     private
#     def greeting
#         puts 'Hello, user'
#     end
# end
# # Creating object
# object = Vehicle.new('Nissan', 'white')
# # Calling object
# object.display
# module Greeting
#     def display
#         puts 'Hello'
#     end
# end
# class Greetuser extend Greeting
#   attr_reader :name
#     def initialize(name)
#         @name = name
#     end
# end
# # Creating object
# object = Greetuser.new('User_name')
# # Calling object
# Greetuser.display
# puts object.name
# class Marvel
#   # Private
#   class Guardians
#       def Quill
#           puts "Legendary outlaw"
#         end
#       def Groot
#           puts "I am Groot"
#         end
#     end
#   # public
#   class Avengers
#       def Tony
#         puts "I am Iron-man"
#       end
#     end
# # making Guardians class private
# private_constant :Guardians
# end
# Marvel::Avengers.new.Tony
# # throws an error(NameError)
# Marvel::Guardians.new.Quill
# class Marvel
#   # private
#   class Guardians
#       def Quill
#           puts "Legendary outlaw"
#         end
#       def Groot
#           puts "I am Groot"
#         end
#     end
#   # private
#   class Avengers
#       def Tony
#         puts "I am Iron-man"
#       end
#     end
# # outer-class method accessing private classes
# def fury
#     Guardians.new.Groot
#     Avengers.new.Tony
# end
# private_constant :Guardians
# private_constant :Avengers
# end
# # calls fury method in Marvel call.
# Marvel.new.fury
# # throws error as it is explicit accessing.
# Marvel::Avengers.new.Tony
# # throws error as it is explicit accessing.
# Marvel::Guardians.new.Quill

# # Overriding EXAMPLE
# class Geeks
#     # method of the superclass
#     def super_method
#         puts "This is Superclass Method"
#   end
# end
# # derived class 'Ruby'
# class Ruby < Geeks
#     # overriding the method of the superclass
#     def super_method
#         puts "Override by Subclass"
#   end
# end
# # creating object of sub class
# obj = Ruby.new
# # calling the method
# obj.super_method

# #DUCKTYPING
class Hotel
  def enters
    puts "A customer enters"
  end
  def type(customer)
    customer.type
  end
  def room(customer)
    customer.room
  end
end
# Creating class with two methods
# class Single
#   def type
#     puts "Room is on the fourth floor."
#   end
#   def room
#     puts "Per night stay is 5 thousand"
#   end
# end
# class Couple
#  # Same methods as in class single
#   def type
#     puts "Room is on the second floor"
#   end
#   def room
#     puts "Per night stay is 8 thousand"
#   end
# end
# # Creating Object
# # Performing polymorphism
# hotel= Hotel.new
# puts "This visitor is Single."
# # customer = Single.new
# hotel.type(Single.new)
# hotel.room(Single.new)
# puts "The visitors are a couple."
# # customer = Couple.new
# hotel.type(Couple.new)
# hotel.room(Couple.new)

# #Constructer Overloading : not allowed in ruby 
# class Demo
#     def initialize(c)
#         puts "Welcome to GeeksforGeeks!"
#      end
#     def initialize(a,b)
#         puts "Welcome aastha!"
#     end
# end
# Demo.new(2)

# class Box
#    # constructor method
#    def initialize(w,h)
#       @width, @height = w, h
#    end
#    # instance method by default it is public
#    def getArea
#       getWidth() * getHeight
#    end
#    # define private accessor methods
#    def getWidth
#       @width
#    end
#    def getHeight
#       @height
#    end
#    # make them private
#    private :getWidth, :getHeight
#    # instance method to print area
#    def printArea
#       @area = getWidth() * getHeight
#       puts "Big box area is : #@area"
#    end
#    # make it protected
#    # protected :printArea
# end
# # create an object
# box = Box.new(10, 20)
# # call instance methods
# a = box.getArea()
# puts "Area of the box is : #{a}"
# # try to call protected or methods
# box.printArea()

