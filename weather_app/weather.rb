require 'barometer'

def location
	puts "Where do you live?"
	loc = gets.chomp
	weather(loc) 
end

def weather(loc)
	barometer = Barometer.new(loc)
	weather = barometer.measure
	puts weather.current.temperature
end


location