puts "Please enter a word:"
puts "You can press enter without text at anytime to exit the program:"
words_arr = []

while true
  word = gets.chomp
  break if word.empty?
  
  words_arr << word
end 

puts "Here is the sorted words list"
puts words_arr.sort


