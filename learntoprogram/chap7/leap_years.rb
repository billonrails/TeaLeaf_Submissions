puts "Please enter a beginning year:"
beginning_year = gets.chomp.to_i

puts "Please enter a ending year:"
ending_year = gets.chomp.to_i

year = beginning_year
puts "Here are the leap years in your range:"
while year <= ending_year
  if year % 4 == 0 
    if year % 100 != 0 || year % 400 == 0
      puts year
    end
  end
  year = year += 1
  
end

