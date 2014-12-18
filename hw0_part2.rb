#string concat
def hello(name)
	return "Hello, #{name}"
end
#checks first character for 1. letter, 2. consonant
def starts_with_consonant?(s)
	s.downcase!
	letter = /[a-z]/.match(s.chr) != nil
	consonant = /[^aeiou]/.match(s.chr) != nil
	return letter && consonant
end
#is strings binary number multiple of 4?
def binary_multiple_of_4?(s)
	return false if s == '' || s.length == 0
	s.split("").each do |val|
		return false unless val == "0" || val == "1"
	end
	s.to_i(2) % 4 == 0
end