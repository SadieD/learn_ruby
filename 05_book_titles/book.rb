class Book
	attr_accessor :title

	def initialize
		@title = ''
	end
	
	def title
		@title
	end
	
	def title=(title)
		@title = titlize(title)
	end
	
	
	def titlize sentence
		words = sentence.split(" ")
		little_words = ['and', 'in', 'the', 'over', 'of', 'a', 'an']
		
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
end
