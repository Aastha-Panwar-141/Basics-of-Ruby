class Student
    # attr_reader and attr_writer use only inside the class, outside the class it gives error i.e NoMethodError
    # attr_reader :name, :age, :salary   #Auto generated getter method
    # attr_writer :name, :age, :salary   #Auto generated setter method
    attr_accessor :name, :age, :salary   #Auto generated setter method

    def initialize(name, age, salary)
        @name = name  #instance variables
        @age = age
        @salary = salary
    end
end
                                                                                                           
s1 = Student.new("aastha", "20", "10000")

s1.name = 'Naman'
s1.age = '23'
s1.salary = '20000'

puts s1.name
puts s1.age
puts s1.salary


=begin
Output of attr_reader
aastha
20
10000

Output of attr_writer and attr_accessor
Naman
23
20000
=end