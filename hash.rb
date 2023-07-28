=begin
countries = {
    "in" => "india",
    "us" => "United state",
    "uk"=>"united kingdom",
    "no"=>"norway"
}
puts "The size of the Hash is #{countries.length}"  #The size of the Hash is 4
puts countries.keys.inspect  #["in", "us", "uk", "no"]
puts countries.values.inspect  #["india", "United state", "united kingdom", "norway"]
countries.each{|k,v| puts "key: #{k}, value: #{v}"}
countries.each_pair{|k,v| puts "key: #{k}, value: #{v}"}
countries.each_key{|k| puts "key: #{k}"}
countries.each_value{|v| puts "value: #{v}"}

# key: in, value: india
# key: us, value: United state
# key: uk, value: united kingdom
# key: no, value: norway


newcountries = countries.invert
puts newcountries.keys.inspect  #["india", "United state", "united kingdom", "norway"]
puts newcountries.values.inspect   #["in", "us", "uk", "no"]
=end

names = Hash.new 
names["clever"] = "Aastha"
names["hot"] = "Kanan"
names["funky"] = "Avika"
names["sporty"] = "Naman"

#Methods
puts names["hot"]  #Kanan
puts names.fetch("funky")  #Avika
puts names.values_at("clever", "hot")
#check availability of keys in hash
puts names.has_key?("hot")  # true
puts names.key?("funky")  # true
puts names.include?("sporty")  #true
puts ""
#check availability of values in hash
puts names.has_value?("Naman")  # true
puts names.value?("Avika")  # true
puts ""
#duplicate the hashes
names2 = names.dup
puts names2
puts names2.keys.inspect  #["clever", "hot", "funky", "sporty"]
puts names2.values.inspect   #["Aastha", "Kanan", "Avika", "Naman"]
#check equality of two hashes
puts names2.eql?names   #true
puts names2.empty?  #false
names2.clear
puts names2  #{}
puts names2.empty?  #true
puts ""
=begin
#deletion
names.delete("funky")
names.shift  #delets the first pair from hash
names.delete_if{|k,v| k == "hot"}
names.delete_if{|k,v| v == "Naman"}
puts ""
=end
#addition
people = Hash.new
people.store("dwarf", "smith")
people.store("tall", "dave")
people.store("fat", "jersy")
puts people.inspect   #{"dwarf"=>"smith", "tall"=>"dave", "fat"=>"jersy"}

#merge two hashes
# myhash = names.merge(people)
# puts myhash.inspect  
# puts names.inspect  
# puts people.inspect 
# puts ""

#merge! & update function are synonyms
myhash = names.merge!(people)  # names & myhash remains same now
myhash = names.update(people)  # names & myhash remains same now
puts myhash.inspect  
puts names.inspect  
puts people.inspect 
puts ""

#assoc function(key)  - returns either nil or key-value pair
# puts names.assoc("Kanan")  # parameter will only take key, only value 
 
#assoc function(value) - returns either nil or key-value pair
# puts names.rassoc("Kanan")  # parameter will only take value, only value 

