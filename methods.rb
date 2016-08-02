def my_first_method
	puts "This is my first method"
end

my_first_method

def math(num1, num2)
	sum = num1 + num2 
	puts sum
end

math(27, 56)

def determine_current_hour
	current_time = Time.new
	current_hour = current_time.hour
end

def get_name
	puts "Hi! What's your name?"
	name = gets.chomp
	name
end
 
def greeting(name)
	current_hour = determine_current_hour
	if(current_hour > 3 && current_hour < 12)
		time = "morning"
	elsif(current_hour > 12 && current_hour < 18)
		time = "afternoon"
	elsif(current_hour > 18 || current_hour < 2)
		time = "evening"
	end
	puts "Good #{time}, #{name.capitalize}!"
end
greeting(get_name)