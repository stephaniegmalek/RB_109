=begin
----- Problem -----
input: 3 integers
      - scores
output: string
      - average grade
rules:
- tested values are all between 0 and 100
- no need to check for negative values or values greater than 100

----- Examples -----
get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"

----- Data Structure -----
integers, strings

----- Algorithm -----
find average by adding together arguments and dividing by 3
return grade based on average
=end

def get_grade(score1,score2, score3)
  average = (score1 + score2 + score3) / 3
  case average
  when 90..100 then 'A'
  when 80..89  then 'B'
  when 70..79  then 'C'
  when 60..69  then 'D'
  else              'F'
  end
end

p get_grade(95, 90, 93)
p get_grade(50, 50, 95)