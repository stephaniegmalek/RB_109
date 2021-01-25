# ----- Problem -----
# input: positive or negative number
# output: time of day in 24 hour format (hh:mm)

# rules:
#   Explicit:
#   - if input number of minutes is positive, the time is after midnight
#   - if input number of minutes is negative, the time is before midnight
#   Implicit:
#   - don't care if more than 24 hours (24 hours in minutes is 1440)

# ----- Examples -----
# time_of_day(0) == "00:00"
# time_of_day(-3) == "23:57"
# time_of_day(35) == "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"

# ----- Data Structure -----


# ----- Algorithm -----
# 1. Find how many minutes in 24 hour period
#    - how many times the input evenly divides into 1440 ( 60 * 24 )
# 2. Find the hour and minutes by dividing minutes by 60
#    - use the quotient for hours and modulous for minutes
# 3. Return hours and minutes

# ----- Code -----
def time_of_day(delta_mins)
  delta_mins = delta_mins % 1440
  hour, minute = delta_mins.divmod(60)
  format('%02d:%02d', hour, minute)
end

#  p time_of_day(0) # =="00:00"
#  p time_of_day(-3) # == "23:57"
#  p time_of_day(35) # == "00:35"
#  p time_of_day(-1437) # == "00:03"
#  p time_of_day(3000) # == "02:00"
#  p time_of_day(800) # == "13:20"
#  p time_of_day(-4231) # == "01:29"

# Further Exploration 
require 'date'

SUNDAY_MIDNIGHT = Time.new(2020, 7, 12)

def day_and_time(delta_mins)
  day_and_time = SUNDAY_MIDNIGHT + delta_mins * 60
  day_and_time.strftime("%A %H:%M")
end

p day_and_time(0) # =="00:00"
p day_and_time(-3) # == "23:57"
p day_and_time(35) # == "00:35"
p day_and_time(-1437) # == "00:03"
p day_and_time(3000) # == "02:00"
p day_and_time(800) # == "13:20"
p day_and_time(-4231) # == "01:29"
