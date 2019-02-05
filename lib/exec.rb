require_relative 'phone_worder'

puts "Enter the input"
input = gets.gsub("\n", "")


puts "#{PhoneWorder.new.convert(input)}"