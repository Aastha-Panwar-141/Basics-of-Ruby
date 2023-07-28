=begin
>> require and require_relative

- Require is similar to include statement of c and c++ (eg. #include<stdio.h>)
and import statement in java.
- It is used to include any defined ruby program in 3rd program body.

Syntax:
$LOAD_PATH <<'.'   #. - same directory
require "filename"
eg. require "test.rb"

require_relative syntax:  recommended bcoz no need to specify the path here
require_relative "filename"   

=end

# $LOAD_PATH << '.'
# require "module.rb"
# require "array.rb"

require_relative "module.rb"
require_relative "array.rb"

obj = Trig::Class_name.new  #from module.rb file
obj.method_name


# outputs of both the above file will displays here