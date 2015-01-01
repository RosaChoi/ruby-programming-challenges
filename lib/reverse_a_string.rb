def reverse_a_string
  puts "Enter a string:"
  string = gets.chomp

  count = string.length

  reversed = ""

  while count > 0
    count -= 1
    reversed += string[count]
  end

  puts reversed
end

reverse_a_string
