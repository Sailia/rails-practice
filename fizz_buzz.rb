def fizz_buzz
	x = 0

	while x < 100
		x += 1
		if x % 3 == 0 && x % 5 == 0
			puts "FizzBuzz"
		elsif x % 5 == 0
			puts "Buzz"
		elsif x % 3 == 0
			puts "Fizz"
		else
			puts x
		end
	end
end

fizz_buzz