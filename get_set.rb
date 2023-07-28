class Student

    def initialize(name, age, salary)
        @name = name  #instance variables
        @age = age
        @salary = salary
    end

#getters
    def name
        @name    #naman
    end

    # def name 
    #     puts "Name = #{@name}"   #Name = naman
    # end

    def age 
        puts "Age = #{@age}"
    end

    def salary 
        puts "Salary = #{@salary}"
    end
    
# #setters
    def name =(name)
        @name = name
    end

    def age =(age)
        @age = age
    end

    def salary =(salary)
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
Output
Name = naman
Age = 23
Salary = 20000
=end