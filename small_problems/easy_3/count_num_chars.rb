puts "Please write word or multiple words:"
input = gets.chomp

num_of_chars = input.split.join.length

puts "There are #{num_of_chars} characters in \"#{input}\"."