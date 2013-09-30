bottles = 99

while bottles > 0
  bottles_str = bottles.to_s
  puts "#{bottles_str} of beer on the wall, #{bottles_str} of beer"
  bottles = bottles - 1
  puts "Take one down pass it around"
  less_bottles_str = bottles.to_s
  puts "#{less_bottles_str} of beer on the wall"
  puts
end
puts "There is no more beer on the wall go home now, and drive safe"
