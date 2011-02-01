#!/usr/bin/ruby

number_of_cases = gets.chomp.to_i
k = 1
while(k <= number_of_cases) do
	# 1) Store alien_number, source_language, target_language
	input = gets.chomp.split(/ |,/)
	alien_number = input[0].chomp.split(//)
	alien_number_length = alien_number.length
	source_language = input[1].chomp.split(//)
	source_language_length = source_language.length
	target_language = input[2].chomp.split(//)
	target_language_length = target_language.length

	# 2) Get hash for decimal conversion
	@source_language = Hash.new
	(0...source_language_length).each do |i|
		@source_language["#{source_language[i]}"] = i
	end

	# 3) convert the alien number into decimal form
	decimal_form = 0
	(0...alien_number_length).each do |j|
		reverse_index = alien_number_length - j - 1
		decimal_form += (source_language_length ** j) * @source_language["#{alien_number[reverse_index]}"] 	
	end

	# 4) convert decimal form into target number
	target_number = ""
	while(decimal_form > 0) do
		remainder = decimal_form % target_language_length
		target_number = "#{target_language[remainder]}#{target_number}"
		decimal_form = (decimal_form - remainder) / target_language_length
	end
	puts "Case#{k}: #{target_number}"
	k += 1
end
