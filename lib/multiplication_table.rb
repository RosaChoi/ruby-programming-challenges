class MultiplicationTable

  def initialize(rows, columns)
    @rows = rows
    @columns = columns
  end

  def generate
    puts "A multiplication table:"
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

MultiplicationTable.new(9,9).generate
