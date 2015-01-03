class FahrenheitToCelsiusConverter
  def convert(fahrenheit)
    (fahrenheit - 32.0) * (5.0/9.0)
  end

  def from
    "Fahrenheit"
  end

  def to
    "Celsius"
  end
end

class CelsiusToFahrenheitConverter
  def convert(celsius)
    celsius * (9.0/5.0) + 32.0
  end

  def from
    "Celsius"
  end

  def to
    "Fahrenheit"
  end
end

def converter_for_input(user_input)
  if user_input == "1"
    CelsiusToFahrenheitConverter.new
  elsif user_input == "2"
    FahrenheitToCelsiusConverter.new
  else
    nil
  end
end

def run(converter)
  puts "Enter #{converter.from} Temperature:"
  input = gets.to_f
  result = converter.convert(input).round(2)
  "#{input} degrees #{converter.from} is equal to #{result} degrees #{converter.to}."
end

puts "Type '1' to convert from Celsius to Fahrenheit or type '2' to convert from Fahrenheit to Celsius."

converter = converter_for_input(gets.chomp)
if converter == nil
  puts "Not a valid choice. Please try again."
else
  result = run(converter)
  puts result
end
