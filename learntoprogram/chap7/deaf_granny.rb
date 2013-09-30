puts "Say something to your lovely Granny:"
bye_count = 0

while true
  spoken = gets.chomp
  if spoken == "BYE"
    bye_count +=1
  else 
    bye_count = 0
  end
  break if bye_count > 3
  
  response = if spoken != spoken.upcase
    "HUH?! SPEAK UP SONNY"
  else
    "NO, NOT SINCE #{rand(1930..1950)}!"
  end
  puts response
end 
puts "GOODBYE SWEATIE!"
    

