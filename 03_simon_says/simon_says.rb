def echo phrase
	return phrase.to_s
end

def shout phrase
	return phrase.to_s.upcase
end

def repeat phrase, rep = 2

	phrase_repeat = ''
	(1..rep).each do
		phrase_repeat = phrase_repeat + " " + phrase
	end
	return phrase_repeat.strip
end

def start_of_word word, letter_number
	letters = ''
	
	(0..(letter_number - 1)).each do |i|
	letters << word[i]
	end
	
	return letters
end

def first_word sentence
	words = sentence.split(" ")
	return words[0]
end

def titleize sentence
	words = sentence.split(" ")
	little_words = ['and', 'in', 'the', 'over']
	
	(0..(words.length - 1)).each do |i|
		if i == 0
			words[i] = words[i].capitalize
		elsif not little_words.include?(words[i])
			words[i] = words[i].capitalize
		end
	end
	
	titleized = ""
	words.each { |words| titleized << "#{words} " }
	return titleized.strip
end
