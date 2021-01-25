=begin
----- Problem -----
input: n -> number of lights
output: an array of numbers
        - numbers in array represent which lights are on

rules:
      Explicit:
      - each light starts off 
      - each iteration you toggle lights once in pattern
      - number of iterations is n times
      Implicit:
      - pattern of lights toggled is determined by which iteration it is
        - if first iteration, every 1 light is toggled -> lights 1, 2, 3, 4
        - if second iteration, every 2 lights are toggled -> lights 2, 4
        - if third iteration, every 3 lights are toggled -> lights 3
        - if fourth iteration, every 4 lights are toogled -> light 4

----- Examples ------
n = 5 lights
round 1: all lights on, every light toggled -> lights 1, 2, 3, 4, 5
round 2: lights 2 and 4 off, every 2 lights toggled -> 2, 4
round 3: lights 2, 3, 4 off, every 3 lights toggled -> 3
round 4: lights 2 and 3 off, every 4 lights toggled -> 4
round 5: lights 2, 3, 5 off, every 5 lights toggled -> 5

result = [1, 4]

n = 10
result = [1, 4, 9]

----- Data Structure -----
arrays, integers, hash

----- Algorithm -----
create n lights in off state
- iterate thru 1 to n
- make state 'off'

iterate thru n rounds and toggle lights
- light evenly divided into what round it is it gets toggled
- if light is off turn on if on turn off

iterate thru lights and select lights who's state is on
=end

def create_lights(n)
  lights = {}
  (1..n).each { |n| lights[n] = 'off' }
  lights
end

def toggle_lights(lights, round)
  lights.each do |light, state|
    if light % round == 0
      state == 'off' ? lights[light] = 'on' : lights[light] = 'off'
    end
  end
end

def select_lights_on(lights)
  lights.select { |light, state| state == 'on'}.keys
end

def turn_on_lights(n)
  lights = create_lights(n)
  
  1.upto(n) do |nth|
    toggle_lights(lights, nth)
  end
  
  select_lights_on(lights)
end

p turn_on_lights(5)
p turn_on_lights(7)
p turn_on_lights(10)
p turn_on_lights(12)
p turn_on_lights(1000)
