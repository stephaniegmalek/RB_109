=begin
----- Problem -----
input: time of day in 24 hour format
       - string
output: number of minutes before or after midnight
        - integer
rules:
      Explicit:
      - range of values for output should be 0..1439
      - cannot use Date or Time methods
      - ignore Daylight Savings and Standard Time etc
      Implicit:
      - 24 hours in day
      - 60 minutes in hour
      - 60 seconds in minute
      - 3600 seconds in hour
      - 1440 minutes per day

----- Examples -----
after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0

----- Data Structure -----
integers, strings

----- Algorithm -----
Split input into hours and minutes
multiple hours by 60 to get minutes a d add to minutes for total

if after midnight
- return total

if before midnight
- subtract from 1440
=end

def after_midnight(time)
  hours, minutes = time.split(":").map { |v| v.to_i}
  ((hours * 60) + minutes) % 1440
end

def before_midnight(time)
  total = 1440 - after_midnight(time)
  return 0 if total == 1440
  total
end

# p after_midnight('00:00') #== 0
# p before_midnight('00:00') #== 0
# p after_midnight('12:34') #== 754
# p before_midnight('12:34') #== 686
# p after_midnight('24:00') #== 0
# p before_midnight('24:00') #== 0

# Further Exploration
# use date and time classes

require 'time'

MINUTES_PER_DAY = 1440

def after_midnight_further(time)
  t = Time.parse(time)
  (t.hour * 60 + t.min) % MINUTES_PER_DAY
end

def before_midnight_further(time)
 (MINUTES_PER_DAY - after_midnight_further(time)) % MINUTES_PER_DAY
end

p after_midnight_further('00:00') #== 0
p before_midnight_further('00:00') #== 0
p after_midnight_further('12:34') #== 754
p before_midnight_further('12:34') #== 686
p after_midnight_further('24:00') #== 0
p before_midnight_further('24:00') #== 0