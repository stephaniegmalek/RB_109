def shout_out_to(name)
  # name.chars.each { |c| c.upcase! }

  puts 'HEY ' + name.upcase
end

shout_out_to('you') # expected: 'HEY YOU'