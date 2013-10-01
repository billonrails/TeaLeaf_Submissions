arr = [1, 2, 3, 4, 5, 6, 7, 8, 9,]
puts "Excercise 1"
# Question 1
arr.each { |x| puts x }
puts "Excercise 2"
# Question 2
arr.each { |x| puts x if x > 5 }
# Question 3
puts "Excercise 3"
arr.select { |x| puts x if x % 2 != 0 }
# Question 4
puts "Excercise 4"
arr.push(11)
arr.unshift(0)
print arr
puts ''
# Question 5
puts "Excercise 5"
arr.pop
arr.push(3)
print arr
puts ''
# Question 6
puts "Excercise 6"
print arr.uniq
puts ''
# Question 7
puts "Excercise 7"
puts "A array is ordered list indexed by position in the order,"
puts "Whereas a hash is indexed by key value pairs"
# Question 8
puts "Excercise 8"
h1 = Hash["a", 1, "b", 2, "c", 3, "d", 4 ]

puts h1
h2 = {"e" => 5, "f" => 6, "g" => 7}
puts h2
#Question 9
puts "Excercise 9"
puts h1["b"]
#Question 10
puts "Excercise 10"
h2[:"h"] = 8
puts h2
#Question 11
puts "Excercise 11"
h1.each {|k, v| puts k,v if v > 3.5}
#Question 12 
puts "Hash values can be arrays, and you can have an array of hashes"

