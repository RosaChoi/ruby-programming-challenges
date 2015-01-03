class RockPaperScissors

  def initialize
    puts "Let's play Rock Paper Scissors! What sign would you like to throw?"
    @user_throw = gets.chomp
  end

  def user_throw
    if @user_throw != 'rock' && @user_throw != 'paper' && @user_throw != 'scissors'
      puts "not a valid throw!"
    else
      puts "You chose: #{@user_throw}"
    end

    @user_throw
  end

  def computer_throw
    @computer_throw = ["rock","paper","scissors"].sample

    puts "Computer choses: #{@computer_throw}"

    @computer_throw
  end

  def compare_throws(user_throw, computer_throw)
    playing = true

    while playing
      case
      when user_throw == computer_throw then puts "It's a tie"
      when user_throw == "rock" && computer_throw == "paper" then puts "Computer wins!"
      when user_throw == "rock" && computer_throw == "scissors" then puts "You win!"
      when user_throw == "paper" && computer_throw == "rock" then puts "You win!"
      when user_throw == "paper" && computer_throw == "scissors" then puts "Computer wins!"
      when user_throw == "scissors" && computer_throw == "rock" then puts "Computer wins!"
      when user_throw == "scissors" && computer_throw == "paper" then puts "You win!"
      end
      playing = false
    end
  end

  def game
    compare_throws(user_throw, computer_throw)
  end

end


RockPaperScissors.new.game
