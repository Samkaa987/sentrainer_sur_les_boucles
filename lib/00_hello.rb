def ask_first_name
	puts 'Quel es ton prénom ?'
	print '>'
	first_name = gets.chomp
	return first_name
end	



def say_hello(first_name)
	puts "bonjour, #{first_name} !"
end	


def perform
	first_name = ask_first_name
	say_hello(first_name)
end

perform	