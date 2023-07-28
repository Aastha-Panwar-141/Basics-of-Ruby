=begin
    
rescue => exception
    
endA CSV is a comma-separated values file, which allows data to be saved in 
a tabular format. 

Aastha,Panwar,1355,Indore
Naman,Panwar,1355,Indore
Swati,Panwar,357,Ratlam
=end
require 'csv'

# Creat a csv file
# CSV.open('csv.csv', 'wb') do |csv|  #wb-writable
#     csv << ['stock', 'sales','day']
#     csv << ['10', '12', '1']
#     csv << ['11', '1', '14']
#     csv << ['12', '32', '91']
#     csv << ['22', '42', '50']
# end

cats = [
    [:blue, 1],
    [:white, 2],
    [:black_and_white, 3]
  ]
  
cats.map { |c| c.join(",") }.join("\n")

# Read a csv file
# CSV.foreach ('csv.csv') do |i|  #wb-writable
#     puts i.inspect
# end

# CSV.read ("csv.csv")  #not working

# output- 
# ["stock", "sales", "day"]
# ["10", "12", "1"]
# ["11", "1", "14"]
# ["12", "32", "91"]
# ["22", "42", "50"]

# CSV.parse("15, 30, 58")
# table = CSV.parse(File.read("csv.csv"), headers: true)
# table[0]["stock"]
# table[0]["sales"]
# table.by_col[0]
# table.by_col[1]



