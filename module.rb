=begin
Modules are a way of grouping together methods, classes and constants.
Modules provide a namespace and prevent name clashes.
Modules implement the mixin facility.

#SYNTAX
module Module_name
    BAD = 1  #constant

    def Module_name.Method_name(x)
        # code
    end
end

puts Module_name::BAD  #1

Method_name.Method_name(Module_name::BAD)

=end

=begin
module Trig
    PI = 3.1416
    def Trig.sinfunc(x)
        puts Math.sin(x)
    end
    def Trig.cosfunc(x)
        puts Math.cos(x)
    end
end

module Moral
    Very_bad =0
    Bad =1
    def Moral.sinfunc(badnesslevel)
        if(badnesslevel==0)
            puts "You are very bad"
        else
            puts "You are just bad"
        end
    end
end
puts Trig::PI   #3.1416
Trig.sinfunc(0)  #0.0 as sin(0)=0
Trig.cosfunc(0)  #1.0 as cos(0)=1

Moral.sinfunc(Moral::Bad)  #You are just bad

=end

#CLASS WITHIN MODULE
module Trig
    class Class_name
        PI = 3.1416
        def method_name
            puts "userdefined method"
        end
        def initialize  #default constructor
            puts "Classname obj creation"
        end
    end
end

# obj = Trig::Class_name.new
# obj.method_name

# Classname obj creation
# userdefined method