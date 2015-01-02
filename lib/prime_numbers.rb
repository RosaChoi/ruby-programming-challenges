def prime_printer(max)

  range = (0..max).to_a
  range[0] = nil
  range[1] = nil


  (max/2 + 1).times do |number|
    if (range[number] != nil)
      then count = 2 * number
      while count <= max do
        p range[count]
        range[count] = nil
        count += number
      end
    end
  end
  range.compact!
end

prime_printer(100)
