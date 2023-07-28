=begin
It calls a method on the parent class with the same name as the method 
that calls super.

=end

=begin
class A
    def api1
        puts "api of a"
    end
end

class B < A
    def api1
        # super
        puts "api of b"
    end
end

class C < A
    def api1
        # super
        puts "api of c"
    end
end

a = C.new
a.api1
=end


# SELF- 
# It’s a Ruby keyword that gives you access to the current object.

# Using Self For Disambiguation
class Example
    def do_something
      banana = "variable"
  
      puts banana
      puts self.banana
    end
  
    def banana
      "method"
    end
  end
  
  Example.new.do_something
  
  # "variable"  => puts banana
  # "method"    => puts self.banana