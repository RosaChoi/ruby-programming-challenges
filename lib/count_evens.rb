class Array

  def count_evens

    evens = self.select(&:even?).count

    puts "HI FRIEND, I AM ARRAY.  I HAVE #{evens} EVEN NUMBERS.  PRETTY AWESOME YES?  I LOVE YOU GOODBYE"
  end

end

nums = [2,5,9,15,22,99]
nums.count_evens
