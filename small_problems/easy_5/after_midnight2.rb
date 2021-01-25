# ----- Problem -----
# input: time of day in 24 hour format string
# output: number of minutes before or after midnight

# rules:
#     Explicit:
#     - can not use the `Date` or `Time` methods
#     - return value should be in range of 0..1439

# ----- Examples -----
# after_midnight('00:00') == 0
# before_midnight('00:00') == 0
# after_midnight('12:34') == 754
# before_midnight('12:34') == 686
# after_midnight('24:00') == 0
# before_midnight('24:00') == 0

# ----- Data Structure -----
# string to array to integers

# ----- Aglorithm -----
# 1. Separate string by ':'
# 2. Convert each substring to integers
# 3. Multiple the first element by 60
# 4. Add elements together 
# 5. if after midnight 
#    - return sum
#    if before midnight
#    - subtract sum from 1440

# ----- Code -----
def after_midnight(string)
  hours, minutes = string.split(':').map(&:to_i)
  (hours * 60 + minutes) % 1440
end

def before_midnight(string)
  minutes = 1440 - after_midnight(string)
  return 0 if minutes == 1440
  minutes
end

p after_midnight('00:00') # == 0
p before_midnight('00:00') # == 0
p after_midnight('12:34') # == 754
p before_midnight('12:34') # == 686
p after_midnight('24:00') # == 0
p before_midnight('24:00') # == 0