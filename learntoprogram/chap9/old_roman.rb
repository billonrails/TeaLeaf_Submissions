def new_roman_numeral(number)
  numeral = ''
  
  numeral = numeral + 'M' * (number / 1000)
  numeral = numeral + 'D' * (number % 1000 / 500)
  numeral = numeral + 'C' * (number % 500 / 100)
  numeral = numeral + 'L' * (number % 100 / 50)
  numeral = numeral + 'X' * (number % 50 / 10)
  numeral = numeral + 'V' * (number % 10 / 5)
  numeral = numeral + 'I' * (number % 5 / 1)
  numeral
end
