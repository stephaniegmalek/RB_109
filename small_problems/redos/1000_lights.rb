=begin
----- Problem -----
input: integer
      - the number of switches
      - the number of repetitions
output: an array
      - contains integers that represent which lights are on after n repetitions
rules:
- each light begins in state of off
- each repetition you toggle every n switch

----- Examples -----
lights(5) == [1, 4]
round 1: every light is turned on
round 2: lights 2 and 4 are now off; 1, 3, 5 are on
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on

lights(10) == [1, 4, 9]

----- Data Structure -----
integers, array, hash, booleans

----- Algorithm -----
initalize lights hash
- n lights all with state of 'off'
iterate thru lights n times
- toggle every n light 
  - if light off, now on and vice versa
select lights that are on and return 
=end
def create_lights(n)
  lights = {}
  1.upto(n) do |light|
    lights[light] = 'off'
  end
  lights
end

def toggle_lights(lights, n)
  lights.map do |light, state|
    if light % n == 0
      if lights[light] == 'on'
        lights[light] = 'off'
      else
        lights[light] = 'on'
      end
    end
  end
  lights
end

# p toggle_lights({1=>"off", 2=>"off", 3=>"off", 4=>"off", 5=>"off"}, 2)
# p toggle_lights({1=>"on", 2=>"off", 3=>"on", 4=>"off", 5=>"on"}, 3)

def select_lights_on(lights)
  lights.select {|light, state| state == 'on' }.keys
end

def thousand_lights(n)
  lights = create_lights(n)
  1.upto(n) do |round|
    lights = toggle_lights(lights, round)
  end
  select_lights_on(lights)
end

p thousand_lights(5)
p thousand_lights(10)
# p thousand_lights(1000)