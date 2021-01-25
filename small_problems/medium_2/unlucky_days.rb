=begin
----- Problem -----
input: year
output: integer
        - represents the number of Friday the 13ths in the year given by the argument
rules:
      Explicit:
      - assume the year is greater than 1752
      - the Gregorian Calendar is being used

----- Examples -----
friday_13th(2015) == 3
friday_13th(1986) == 1
friday_13th(2019) == 2

----- Data Structure -----

----- Algorithm -----
initialize a count variable
iterate thru the 13th of each month in given year 
- check if the 13th is a friday
- if is friday, increment count by 1

=end

def friday_13th(year)
  count = 0
  1.upto(12) do |month|
    t = Time.local(year, month, 13)
    count += 1 if t.friday?
  end
  count
end

# p friday_13th(2015) #== 3
# p friday_13th(1986) #== 1
# p friday_13th(2019) #== 2
# p friday_13th(1979)
# p friday_13th(1799)

# Alternative / Launch Solution 
require 'date'

def friday_13th_alt(year)
  count = 0
  thirtheenth = Date.new(year, 1, 13)
  12.times do
    count += 1 if thirtheenth.friday?
    thirtheenth = thirtheenth.next_month
  end
  count
end

# p friday_13th_alt(2015)
# p friday_13th_alt(1986)
# p friday_13th_alt(2019)

# Further Exploration
# count the number of months that have 5 fridays

# ----- Algorithm -----
# iterate from month 1 to 12
# - initialize current month
# - from start of current month to next month count how many fridays occur
# - if month has 5 friday count increment

def five_fridays(year)
  (1..12).count do |month|
    current_month = Date.new(year, month)
    (current_month...current_month.next_month).count(&:friday?) == 5
  end
end

p five_fridays(2015)
p five_fridays(2020)
p five_fridays(2019)
p five_fridays(2016)
p five_fridays(2008)

