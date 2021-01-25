=begin
----- Problem -----
input: an integer -> the year 
output: an integer -> the number of Friday the 13ths in the given year
rules:
- assume year is greater than 1752
- use modern Gregorian Calendar

----- Examples -----
friday_13th(2015) == 3
friday_13th(1986) == 1
friday_13th(2019) == 2

----- Data Structure -----
integer, Date class

----- Algorithm -----
initialize friday_13_count variable assign it 0
initialize thirteenth_day variable and assign it a new Date of 1, 13, year 
repeat 12 times
- check if the 13th of that month is a friday
  - if yes, increment friday_13_count by 1
- move to next month 
return friday_13_count
=end
require 'date'

def friday_13th(year)
  friday_count = 0
  thirteenth_day = Date.new(year, 1, 13)
  12.times do |_|
    friday_count += 1 if thirteenth_day.friday?
    thirteenth_day = thirteenth_day.next_month
  end
  friday_count
end

p friday_13th(2015) #== 3
p friday_13th(1986) #== 1
p friday_13th(2019) #== 2