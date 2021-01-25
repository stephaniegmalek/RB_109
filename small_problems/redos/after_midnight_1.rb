=begin
----- Problem -----
input: positive or negative integer
      - number of minutes before or after midnight
output: string
        - the time of day in 24 hour format
        - hh:mm
rules:
      Explicit:
      - if input positive, the time is after midnight
      - if input negative, the time is before midnight
      - cannot use `Date` or `Time` classes
      - ignore Daylight Savings and Standard Time etc
      Implicit:
      - input can be greater than 24 hours 
      - 24 hours in day
      - 60 minutes in hour
      - 60 seconds in minute
      - 3600 seconds in hour
      - 1440 minutes per day
      

----- Examples -----
time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

----- Data Structure -----
integers, strings

----- Algorithm -----
Get rid of minutes greater than 24 hour period (1440 minutes)
- find the remainder of dividing input by 1440

Convert number of minutes left to hours and minutes
- divide input by 60 (number of minutes per hour)
  - result is hours and remainder is minutes

format into hh:mm 

=end

def time_of_day(delta_minutes)
  remaining_mins = delta_minutes % 1440
  hours, minutes = remaining_mins.divmod(60)
  format("%02d:%02d", hours, minutes)
end

# p time_of_day(0) #== "00:00"
# p time_of_day(-3) #== "23:57"
# p time_of_day(35) #== "00:35"
# p time_of_day(-1437) #== "00:03"
# p time_of_day(3000) #== "02:00"
# p time_of_day(800) #== "13:20"
# p time_of_day(-4231) #== "01:29"

# Further Exploration
# can use Date and Time classes
# add day of week 

require 'date'

SUNDAY_AT_MIDNIGHT = Time.new(2020, 8, 30)

def time_of_day_further(delta_minutes)
  time = SUNDAY_AT_MIDNIGHT + delta_minutes * 60
  time.strftime("%A %H:%M")
end

p time_of_day_further(0)
p time_of_day_further(-3)
p time_of_day_further(35)
p time_of_day_further(-1437)
p time_of_day_further(3000)
p time_of_day_further(800)
p time_of_day_further(-4231)