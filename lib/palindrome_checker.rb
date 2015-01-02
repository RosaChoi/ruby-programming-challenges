class PalindromeChecker

  def initialize
    @reversed = ""
  end

  def run
    reverse_a_string
    if @string == @reversed
      puts "#{@string} is a palindrome"
    else
      puts "#{@string} is NOT a palindrome"
    end
  end

  def reverse_a_string
    puts "Enter a string:"
    @string = gets.chomp

    count = @string.length

    while count > 0
      count -= 1
      @reversed += @string[count]
    end
  end
end

PalindromeChecker.new.run
