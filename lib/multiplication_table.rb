class MultiplicationTable

  def initialize
    puts "Enter the size of the multiplication table: \nrows:"
    @rows = gets.chomp.to_i
    puts "columns:"
    @columns = gets.chomp.to_i
  end

  def generate
    puts "\nA multiplication table:"
    table_headings

    row_range = (1..@rows)
    column_range = (1..@columns)

      row_range.each do |row|
        print "#{row}|"
        column_range.each do |column|
          print " #{column * row}  \t"
        end
        print "\n"
      end

  end

  def table_headings
    number = 1

    (number..@columns).each do |column|
      print " #{column} \t"
      column +=1
    end
    print "\n" *2
  end

end

MultiplicationTable.new.generate
