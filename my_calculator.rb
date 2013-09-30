def say(msg)
	puts "=> #{msg}"
end

say "Please enter your your first number:"
first_num = gets.chomp

say "Please enter your second number:"
second_num = gets.chomp

say "What operation would you like to do? Type 1)addition 2)subtraction 3)multiplication 4)division"
operation = gets.chomp

  if operation == "1"
	solution = first_num.to_i + second_num.to_i
	
  elsif operation == "2"
	solution = first_num.to_i - second_num.to_i
	
  elsif operation == "3"
	solution = first_num.to_i * second_num.to_i
	
  elsif operation == "4"
	solution = first_num.to_f / second_num.to_f
  end 
puts "The solution is #{solution}"



