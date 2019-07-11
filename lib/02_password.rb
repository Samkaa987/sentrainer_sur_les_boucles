def signup
	puts "Définissez votre mot de passe : "
	print ">"
	mdp = gets.chomp
	puts "mot de passe enregistré."
	return mdp
end

def login(mdp)
	puts "Entrez votre mot de passe : "
	print ">"
	result = gets.chomp

	if result == mdp
	puts "mot de passe correct."
	else puts "mot de passe incorrect, réessayez."
	perform
	end
end

def welcome_screen
	puts "----------> BIENVENUE DANS TA ZONE SECRETE <-------------"
	puts " "
	puts "BREAKING NEWS : FELIX, CEO DE THE HACKING PROJECT, DECIDE DE QUITTER LE NAVIRE !"
end

def perform
	mdp = signup
	result = login(mdp)
	welcome_screen
end

perform
