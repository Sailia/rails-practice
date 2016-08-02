class Pet

	def set_name(name)
		@name = name
	end

	def get_name
		@name 
	end

	def set_colour(colour)
		@colour = colour
	end

	def get_colour
		@colour 
	end

	def favourite_thing(thing)
		@thing_to_do = thing 
	end

	def what_thing
		@thing_to_do
	end

end

class Dog < Pet

	def sound
		"Woof!"
	end

	def defense
		"Bite"
	end

end

class Cat < Pet

	def sound
		"Miow!"
	end

	def defense
		"Claws"
	end
end

ibi = Cat.new 
ibi.set_name("Ibi")
ibi.set_colour("White")
ibi.favourite_thing("Scratch sofas")

rambo = Dog.new 
rambo.set_name("Rambo")
rambo.set_colour("Brown")
rambo.favourite_thing("Eat Homework")


puts "#{ibi.get_name} is a #{ibi.get_colour.downcase} cat and his favourite thing is to #{ibi.what_thing.downcase}. He's quite sensitive and can get defensive by using his #{ibi.defense.downcase}"
puts "#{rambo.get_name} is a #{rambo.get_colour.downcase} dog and his favourite thing is to #{rambo.what_thing.downcase}"
puts ibi.inspect
puts rambo.inspect