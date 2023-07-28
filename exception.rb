=begin

begin
    code..
rescue
    code..
end
=end
require "pty"
begin
    # arr["hf"]
    num = 10/0
rescue ZeroDivisionError
    puts "division by zero error"
    # binding.pry
# rescue TypeError
#     puts "division by zero error"
#with variable
rescue TypeError => e
    puts e
end

=begin
def raise_and_rescue     
    begin     
      puts 'Before the raise.'     
      raise 'An error occured.'     
      puts 'After the raise.'     
    rescue     
    #   puts 'Code rescued.'     
    end     
    puts 'After the begin block.'     
  end     
raise_and_rescue 

def promptAndGet(prompt)   
    print prompt   
    res = readline.chomp   
    throw :quitRequested if res == "!"   
    return res   
end   

catch :quitRequested do   
    name = promptAndGet("Name: ")   
    age = promptAndGet("Occupation: ")   
    # ..   
    # process information   
end   
promptAndGet("Name:")  

=end

# num = 10/0  #ZeroDivisionError

# arr = [1,2,3,4,4]
# # arr["a"]  #TypeError
# puts "hi"
# puts arr[8]