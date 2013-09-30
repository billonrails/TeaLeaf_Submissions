puts "I would love to know your favorite number, please tell me!"
fave_number = gets.chomp
fave_number = fave_number.to_i

bigger_better_number = fave_number + 1
bigger_better_number = bigger_better_number.to_s

puts "I like your number but this is a bigger better one #{bigger_better_number}"
