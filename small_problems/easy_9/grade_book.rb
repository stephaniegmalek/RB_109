=begin
----- Problem -----
input: three scores
output: grade average 
        - determine mean of three schores and look up letter value associated with
          it
rules:
      Explicit:
      - test values are all between 0 and 100
      - no need to check for negative values or values greater than 100

----- Examples -----
get_grade(95, 90, 93) == 'A'
get_grade(50, 50, 95) == 'D'

----- Data Structure -----
integers, case statement

----- Algorithm -----
- determine average
  - add three scores together and divide by 3
- determine letter assoicated with average

=end

def get_grade(score_1, score_2, score_3)
  average = (score_1 + score_2 + score_3) / 3
  
  case average
  when 100..   then 'A+'
  when 90..100 then 'A'
  when 80..89  then 'B'
  when 70..79  then 'C'
  when 60..69  then 'D'
  else              'F'
  end
end

p get_grade(95, 90, 93) #== 'A'
p get_grade(50, 50, 95) #== 'D'
p get_grade(99, 105, 110)