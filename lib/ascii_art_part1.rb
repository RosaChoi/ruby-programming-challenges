
character = "*"


row_count = 5

character_count = 1
width = 100

row_count.times do
  puts (character * character_count).center(width)
  character_count += 2
end
