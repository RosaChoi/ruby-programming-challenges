def ascii_triangle
  puts "What character do you want to make the pyramid out of?"
  character = gets.chomp

  puts "How many rows of #{character}'s do you want?"
  rows = (gets.chomp).to_i

  character_count = 1
  width = 100

  rows.times do
    puts (character * character_count).center(width)
    character_count += 2
  end

end

ascii_triangle
