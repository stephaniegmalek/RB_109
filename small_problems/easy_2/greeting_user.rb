puts "What is your name?"
name = gets.chomp

if name.match?('!')
  puts "HELLO #{name.chop.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name.capitalize}."
end