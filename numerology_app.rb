require 'sinatra'

get '/:birthdate' do
birthdate = params[:birthdate]
birth_path_num = get_birthdate(birthdate)
message = your_numerology(birth_path_num)
"#{message}"
end

def enter_dob
	puts "Please enter your date of birth in the following format: MMDDYYYY"
	birthdate = gets.chomp
	birthdate
end

def get_birthdate(number)
	split_birthdate = number.split("")

	number_1 = split_birthdate[0].to_i
	number = 0

	while split_birthdate.length > 1
		number_1 = split_birthdate[0].to_i
		number += number_1
		split_birthdate.delete_at(0)
	end

	split_number = number.to_s.split("")
	split_number_1 = split_number[0].to_i
	final_number = 0

	while split_number.length > 1
		split_number_1 = split_number[0].to_i
		final_number += split_number_1
		split_number.delete_at(0)
	end
	final_number 
end

def your_numerology(number)
	puts "Your numerology number is #{number}"

	case number
		when 1
			message = "One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
		when 2
			message = "This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
		when 3
			message = "Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."
		when 4
			message = "This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
		when 5
			message = "This is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
		when 6
			message = "This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
		when 7
			message = "This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
		when 8
			message = "This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
		when 9 
			message = "This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
		else
			message = "Oh my days, you didn't enter a path number from 1-9!"
	end
end

