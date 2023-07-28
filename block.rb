#WITHOUT PARAMETER
def test()
    puts "you are in the method"
    yield
end
test() {
    puts "you are in the block"
}
# you are in the method
# you are in the block

#WITH PARAMETER
def test()
    puts "you are in the method"
    yield 5  # 5 is parameter
end
test() {
    |i| puts "you are in the block #{i}"  #i will catch the value and than pass
}

#BEGIN BLOCK - predefined block, executed at the beginning
BEGIN{
    # code
}

#END BLOCK - predefined block, executed at the last
END{
    # code
}

=begin
def test()
    puts "start of method"
    yield('hello', 10)
    puts "end of method"
end
test() {
    |str, num| puts "inside the block " + str +" "+num.to_s  #inside the block hello 10
}
=end

def test(&b)
    #yield
    3.times do (b.call) end  #3 times hello world will print
end
test() {
    puts "Hello world"
}
