puts "What is your age?"
current_age = gets.chomp.to_i

puts "At what age would you like to retire?"
retire_age = gets.chomp.to_i

years_til_retire = retire_age - current_age

current_year = Time.new.year
retire_year = current_year + years_til_retire

puts "It's #{current_year}. You will retire in #{retire_year}."
puts "You have only #{years_til_retire} years of work to go!"