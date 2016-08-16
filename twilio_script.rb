require 'rubygems'
require 'twilio-ruby'

	puts "Hello Skylar! What is your question?"
	answer = gets.chomp
	while answer.length < 6
		puts "Ask a proper question dammit"
		answer = gets.chomp
	end

	account_sid = 'AC276ee9d98abcccc4225e387a14fbcaba'
	auth_token = '3135878b17e6d212d2dcf24c5cf7c0da'
	@client = Twilio::REST::Client.new(account_sid, auth_token)

	message = @client.account.messages.create(
		:from => '+13312085676',
		:to => '7737890989',
		:body => eight_ball_response
	)


	def eight_ball_response
		answers = [
			"It is certain",
			"It is decidedly so",
			"Without a doubt",
			"Yes, definitely",
			"You may rely on it",
			"As I see it, yes",
			"Most likely",
			"Outlook good",
			"Yes",
			"Signs point to yes",
			"Reply hazy try again",
			"Ask again later",
			"Better not tell you now",
			"Cannot predict now",
			"Concentrate and ask again",
			"Don't count on it",
			"My reply is no",
			"My sources say no",
			"Outlook not so good",
			"Very doubtful"
		]
		answers.sample
	end


puts message.to	


	





