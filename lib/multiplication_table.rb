puts "A multiplication table:"

def table_axis
  start_number = 1
  end_number = 9

  (start_number..end_number).each do |number|
    print "   #{number}   "
    number +=1
  end
  print "\n" *2


  (start_number..end_number).each do |number|
    puts " #{number}|"
    number +=1
  end



end

table_axis
