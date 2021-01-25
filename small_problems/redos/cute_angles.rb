=begin
----- Problem -----
input: float
      - represents an angle btwn 0 and 360
output: string
      - represents argument angle in degrees, minutes, and seconds

rules:
- a degree has 60 minutes
- a minute has 60 seconds
- use a 2 digit numbers with leading zeros when formating the minutes and seconds

----- Examples -----
dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

----- Data Structure -----
floats, strings

----- Algorithm -----
separate out degrees
separate out minutes 
separate out seconds 
format as string 
=end

DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE
VALID_RANGLE = 0..360

def dms(angle)
  VALID_RANGLE.include?(angle) ? angle : angle = angle % 360 
  total_seconds = (angle * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format("%d#{DEGREE}%02d'%02d\"", degrees, minutes, seconds)
end

# puts dms(30) #== %(30°00'00")
puts dms(76.73) #== %(76°43'48")
# puts dms(254.6) #== %(254°36'00")
# puts dms(93.034773) #== %(93°02'05")
# puts dms(0) #== %(0°00'00")
# puts dms(360) #== %(360°00'00")
# puts dms(360) #== %(0°00'00")
puts dms(400) 
puts dms(-40)
puts dms(-420)