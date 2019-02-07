# application entry point

require_relative 'phone_worder'

phone_worder = PhoneWorder.new

loop do 
  puts "Please enter the input. Press Enter to exit"
  input = gets.gsub("\n", "")
  break if input.empty?
  result = phone_worder.convert(input)
  puts "#{result}"
end 