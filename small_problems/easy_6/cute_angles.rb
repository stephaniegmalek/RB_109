# ----- Problem -----
# input: floating point number
#        - represents an angle between 0 and 360 degrees
# output: a string
#        - represents the input angle in degrees, minutes, and seconds

# rules:
#       Explicit:
#       - Should use a degree symbol to represent degrees
#       - Should use a single quote to represent minutes
#       - Should use a double quote to represent seconds
#       - A degree has 60 minutes, while a minute has 60 seconds
#       - Should use two digit numbers with leading zeros when formatting the 
#         minutes and seconds e.g., `321o03'07"`
#       - use this constant to represent the degree symbol:
#         DEGREE = "\xC2\xB0"
#       Implicit:
#       - 360 can be represented as 360 degrees 0 0 or 0 00' 00"
# mental model: 
#       - the whole number is the degrees, multiple the remaining decimal by 60
#         to get minutes, multiple that remaining decimal by 60 to get seconds

# ----- Examples -----
# dms(30) == %(30°00'00")
# dms(76.73) == %(76°43'48")
# dms(254.6) == %(254°36'00")
# dms(93.034773) == %(93°02'05")
# dms(0) == %(0°00'00")
# dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# ----- Data Structure -----
# floats, strings

# ----- Algorithm -----
# 1. Get total seconds in angle
#    - multiple angle by number of minutes in a degree and number of seconds in a minute
# 2. Get the seconds of the angle
#    - Find the quotent and remainder of dividing the total seconds by number of seconds
#      in a minute. remainder is seconds and quotent is new total seconds
# 3. Get the minutes and degree of the angle
#    - Find quotent and remainder of dividing total seconds by number of minutes in a
#.     degree. Remainder is minutes and quotent is degrees
# 5. Format and output string


# ----- Code -----
DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE


def dms(angle)
  total_seconds = (angle * SECONDS_PER_DEGREE).round
  minutes, seconds = total_seconds.divmod(SECONDS_PER_MINUTE)
  degrees, minutes = minutes.divmod(MINUTES_PER_DEGREE)
  format(%(#{degrees}#{DEGREE}%.2d'%.2d"), minutes, seconds)
end

puts dms(30)
puts dms(76.73) #== %(76°43'48")
puts dms(254.6)
puts dms(93.034773)

# Further Exploration
# if input angle is less than 0, add 360 to it until greater than 0
# if input angle is greater than 360, subtract 360 from it until less than 360
MAX_ANGLE = 360

def dms_refactor(angle)
  total_seconds = angle % MAX_ANGLE * SECONDS_PER_DEGREE
  minutes, seconds = total_seconds.divmod(SECONDS_PER_MINUTE)
  degrees, minutes = minutes.divmod(MINUTES_PER_DEGREE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end
puts dms_refactor(0)
puts dms_refactor(360)
puts dms_refactor(400)
puts dms_refactor(-40)
puts dms_refactor(-420)
