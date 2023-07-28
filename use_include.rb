require_relative "module_week.rb"

class Decade
    include Week
    $no_of_years = 10

    def no_of_months
        puts "Today is " + Week::First_day   #Today is Sunday
        num = $no_of_years * 12
        puts "No. of months in 10 years is "+ num.to_s    #No. of months in 10 years is 120
    end
end

d1 = Decade.new


puts Week::First_day   #Sunday
Week.weeks_in_month    #You have 4 weeks in a month
Week.weeks_in_year     #You have 52 weeks in a year
d1.no_of_months