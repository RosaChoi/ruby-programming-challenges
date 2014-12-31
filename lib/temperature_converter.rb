class TemperatureConverter

  def initialize
    puts "Type '1' to convert from Celsius to Fahrenheit or type '2' to convert from Fahrenheit to Celsius."
    @unit_choice = gets.chomp
  end

  def get_temperature
    @temp = gets.to_f
  end

  def celsius_to_fahrenheit
    puts "Enter Celsius Temperature:"
    celsius = get_temperature
    fahrenheit = celsius * (9.0/5.0) + 32.0
    puts "#{celsius} degrees Celsius is equal to #{fahrenheit.round(2)} degrees Fahrenheit."
  end

  def fahrenheit_to_celsius
    puts "Enter Fahrenheit Temperature:"
    fahrenheit = get_temperature
    celsius = (fahrenheit - 32.0) * (5.0/9.0)
    puts "#{fahrenheit} degrees Fahrenheit is equal to #{celsius.round(2)} degrees Celsius."
  end

  def run
    if @unit_choice == "1"
      celsius_to_fahrenheit
    elsif @unit_choice == "2"
      fahrenheit_to_celsius
    else
      puts "Not a valid choice. Please try again."
    end
  end

end

converter = TemperatureConverter.new
converter.run
