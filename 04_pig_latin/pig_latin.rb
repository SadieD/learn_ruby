def translate sentence
	vowels = ['a', 'e', 'i', 'o', 'u']
	phonemes = ['qu']
	words = sentence.split(' ')
	translated = ''
	
	(0..(words.length - 1)).each do |i|
		first_letter = ''	
		if phonemes.include?(words[i][0..1])
			first_letter << words[i][0..1]
			words[i] = words[i][2..words[i].length]
		elsif phonemes.include?(words[i][1..2])
			first_letter << words[i][0..2]
			words[i] = words[i][3..words[i].length]
		else
			while not vowels.include?(words[i][0])
				first_letter << words[i][0]
				words[i] = words[i][1..words[i].length]
			end
		end
		

		words[i] = words[i] + first_letter + "ay"
	end
	
	words.each { |words| translated << "#{words} " }
	return translated.strip
end
