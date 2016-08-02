# Ask the user to “Give me a number:”

# puts "Give me a number:"

# number_to_int = gets.chomp.to_i

# number_1 = number_to_int

# (number_1 += 5) + (number_1 *= 2) + (number_1 -= 4) + (number_1 /= 2) + (number_1 -= number_to_int)

# puts "Here is your final number:"
# puts "#{number_1}"

def always_three(number)
	(((number + 5) * 2 - 4) / 2 - number).to_s
end

puts "Enter a number:"
number = gets.chomp.to_i
puts "Here is your final number: " + always_three(number)