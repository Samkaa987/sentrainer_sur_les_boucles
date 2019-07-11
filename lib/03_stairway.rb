#
#
#     IMPORTANT !!!!!!!!!
#
# POUR TESTER LE 'average_finish_time' :
#
# -> ACTIVER LE MODE AUTO POUR NE PAS LANCER LES DÉS : 
#    -> METTRE LES 'gets.chomp' EN MODE COMMENTAIRE. 
#       (ils y en a deux, un dans 'introduction' et un dans 'die'roll', ils sont indiqués par un petit commentaire).
#       NÉCESSAIRE POUR TESTER LA MÉTHODE average_finish_time.
#
# -> REMPLACER 'game' par 'average_finish_time' à la ligne 347.
# -> Tapper 'cd 03_stairway.rb' dans le terminal.



def introduction
	puts "
	
	__        ___   _  ___    ___ ____    ____  _____    _    ______   __
	\\ \\      / / | | |/ _ \\  |_ _/ ___|  |  _ \\| ____|  / \\  |  _ \\ \\ / /
	 \\ \\ /\\ / /| |_| | | | |  | |\\___ \\  | |_) |  _|   / _ \\ | | | \\ V / 
	  \\ V  V / |  _  | |_| |  | | ___) | |  _ <| |___ / ___ \\| |_| || |  
	   \\_/\\_/  |_| |_|\\___/  |___|____/  |_| \\_\\_____/_/   \\_\\____/ |_|  
	                                                                     

		 _____ ___        _ _   _ __  __ ____  
		|_   _/ _ \\      | | | | |  \\/  |  _ \\ 
		  | || | | |  _  | | | | | |\\/| | |_) |
		  | || |_| | | |_| | |_| | |  | |  __/ 
		  |_| \\___/   \\___/ \\___/|_|  |_|_|    
				                                       
	
	THE MODERN GOOSE GAME !	

	------------->> BIENVENUE À TOI JOUEUR <<---------------- 
	
	Dans ce jeu, tu te retrouves en bas d'un immeuble. 
	Tu dois monter seul d'énormes sacs de courses jusqu'à chez toi.
	Or, quand tu arrives, tu remarque que l'ascensseur est en panne ! 
	De plus, tu habites au dixième étage et ces sacs sont très lourds ! 
	Auras-tu assez de force pour remonter jusqu'à chez toi ?
	
	POUR COMMENCER UNE PARTIE, APPUYER SUR [ENTRÉE]"

	print ">"
	gets.chomp		#mettre en commentaire pour mode auto.
	puts "
	*********************************************************
	***                   INSTRUCTIONS                    ***
	*********************************************************

	À CHAQUE TOUR, TU LANCERAS UN DÉ NON PIPÉ CONTENANT 6 FACES.
	CHAQUE LANCÉ TE DONNERA UN RÉSULTAT NUMÉROTÉ DE 1 À 6.
	POUR CHAQUE RÉSULTAT :

	-> Si tu fais 5 ou 6, tu avances d'un étage.
	-> Si tu fais 1, tu descends d'un étage.
	-> Si tu fais 2, 3, ou 4, rien ne se passe.

	LE BUT DU JEU EST D'ARRIVER À ATTEINDRE LE DIXIÈME ÉTAGE LE PLUS RAPIDEMMENT.
	PRÊT ? PARTEZ !




	==================== DÉBUT DE PARTIE ==================== "
end


















def die_roll(round)
	die = ["1","2", "3", "4", "5", "6"]
	

	puts "





	Lancer le dé avec [ENTRÉE]: "
	print ">"
	gets.chomp		#mettre en '#' commentaire pour mode auto.
	dieresult = die.sample
	print "> TOUR N° #{round} : Tu as lancé le dé et tu es tombé sur le chiffre #{dieresult} !"
	return dieresult
end
















def apply_result(dieresult, floor)


	if dieresult == "1"
	finalfloor = floor - 1
	puts "
	 _   _  ___   ___          
	| \\ | |/ _ \\ / _ \\         
	|  \\| | | | | | | |        
	| |\\  | |_| | |_| |  _ _ _ 
	|_| \\_|\\___/ \\___/  (_|_|_)


	Les sacs étaient tellement lourds que tu trébuches durant ta montée ! :$ 
	Après avoir dégringolé les marches, te voilà revenu à l'étage d'en-dessous
	alors que tu devrais être à l'étage d'au-dessus..."

	puts "
	TU ÉTAIS PRÉCÉDEMMENT À L'ÉTAGE #{floor}, À CAUSE DE TA CHUTE TU TE RETROUVES DÉSORMAIS À L'ÉTAGE #{finalfloor} !




	"
	return finalfloor
	
	elsif dieresult == "5" || dieresult == "6"
	finalfloor = floor + 1
	puts "
	 ____ ___   ___  _       _ 
 	/ ___/ _ \\ / _ \\| |     | |
	| |  || | | | | | |     | |
	| |__||_| | |_| | |___  |_|
 	\\____\\___/ \\___/|_____| (_)

	Après avoir pris ton courage à deux mains, tu te mets à monter les marches.
	Grâce à ta force prodigieuse, tu réussis à transporter tous les sacs jusqu'à
	l'étage supérieur ! :D"

	puts "
	TU ÉTAIS PRÉCÉDEMMENT À L'ÉTAGE #{floor}, TU POURSUIS TON CHEMIN ET TE RETROUVES DÉSORMAIS À L'ÉTAGE #{finalfloor} !



	"
	return finalfloor

	else 
	finalfloor = floor
	puts "
	 _____ _   _ _   _         
	| ____| | | | | | |        
	|  _| | | | | |_| |        
	| |___| |_| |  _  |  _ _ _ 
	|_____|\\___/|_| |_| (_|_|_)


	Les sacs sont tellement lourds et tu es tellement fatigué que tu n'arrives
	plus à les soulever... :O
	Personne ne répond au téléphone alors que tu as besoin d'aide...
	Te voilà bloqué au même étage durant une durée indéterminée... :/"

	puts "
	TU ÉTAIS PRÉCÉDEMMENT À L'ÉTAGE #{floor}, TU NE BOUGES PAS ET RESTE À L'ÉTAGE #{finalfloor} !




	"
	return finalfloor
		
	end
	
end





















def endgame(round)
	totalrounds = round - 1

	puts "
	**************************************************************************************************************************************
	======================================================================================================================================


		..######..#######.##....#..######..########....###....######..##.....#.##.........###...#######.###..#######.##....#..######.
		.##....#.##.....#.###...#.##....##.##.....#...##.##..##....##.##.....#.##........##.##.....##....##.##.....#.###...#.##....##
		.##......##.....#.####..#.##.......##.....#..##...##.##.......##.....#.##.......##...##....##....##.##.....#.####..#.##......
		.##......##.....#.##.##.#.##...###.########.##.....#.##...###.##.....#.##......##.....#....##....##.##.....#.##.##.#..######.
		.##......##.....#.##..###.##....##.##...##..########.##....##.##.....#.##......########....##....##.##.....#.##..###.......##
		.##....#.##.....#.##...##.##....##.##....##.##.....#.##....##.##.....#.##......##.....#....##....##.##.....#.##...##.##....##
		..######..#######.##....#..######..##.....#.##.....#..######...#######.#######.##.....#....##...###..#######.##....#..######.


	=======================================================================================================================================
	***************************************************************************************************************************************

	BIEN JOUÉ, TU AS RÉUSSI À RENTRER CHEZ TOI EN #{totalrounds} TOURS !!

	LA PROCHAINE FOIS, RÉFLÉCHIT ET TOC À UNE PORTE DE TON VOISINAGE POUR QUE QUELQU'UN T'AIDE À MONTER TES AFFAIRES...
	JE SAIS MÊME PAS POURQUOI TU Y AS PAS PENSÉ, APRÈS T'ÊTRE CASSÉ LA FIGURE DANS L'ESCALIER PLUSIEURS FOIS...
	OU ALORS VAS FAIRE TES COURSES AVEC QUELQU'UN À QUI TU FERAS PORTER TES SACS ! 
	OU BIEN JUSTE... VA POUSSER À LA SALLE QUOI... FAUT T'ACHETER DES MUSCLES PARCE QUE LÀ C'EST CHAUD !

	SÉRIEUSEMENT ON DEVRAIT PAS FÉLICITER QUELQU'UN JUSTE PARCE QU'IL A MONTÉ 10 ÉTAGES... SURTOUT EN #{totalrounds} TOURS !!
	MAIS BON... VU QUE C'EST TOI, ET QU'AU FINAL TU T'ES DONNÉ DU MAL, JE TE DONNE UN #THUMBSUP !


	★░░░░░░░░░░░████░░░░░░░░░░░░░░░░░░░░★ 
	★░░░░░░░░░███░██░░░░░░░░░░░░░░░░░░░░★ 
	★░░░░░░░░░██░░░█░░░░░░░░░░░░░░░░░░░░★ 
	★░░░░░░░░░██░░░██░░░░░░░░░░░░░░░░░░░★ 
	★░░░░░░░░░░██░░░███░░░░░░░░░░░░░░░░░★ 
	★░░░░░░░░░░░██░░░░██░░░░░░░░░░░░░░░░★ 
	★░░░░░░░░░░░██░░░░░███░░░░░░░░░░░░░░★ 
	★░░░░░░░░░░░░██░░░░░░██░░░░░░░░░░░░░★ 
	★░░░░░░░███████░░░░░░░██░░░░░░░░░░░░★ 
	★░░░░█████░░░░░░░░░░░░░░███░██░░░░░░★ 
	★░░░██░░░░░████░░░░░░░░░░██████░░░░░★ 
	★░░░██░░████░░███░░░░░░░░░░░░░██░░░░★ 
	★░░░██░░░░░░░░███░░░░░░░░░░░░░██░░░░★ 
	★░░░░██████████░███░░░░░░░░░░░██░░░░★ 
	★░░░░██░░░░░░░░████░░░░░░░░░░░██░░░░★ 
	★░░░░███████████░░██░░░░░░░░░░██░░░░★ 
	★░░░░░░██░░░░░░░████░░░░░██████░░░░░★ 
	★░░░░░░██████████░██░░░░███░██░░░░░░★ 
	★░░░░░░░░░██░░░░░████░███░░░░░░░░░░░★ 
	★░░░░░░░░░█████████████░░░░░░░░░░░░░★ 
	★░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░★

	ALLEZ À LA PROCHAINE ! ;)


	© Projet Validant 03_stairway.rb réalisé par Samuel DENEUBOURG aka Samkaa987 dans le cadre de 'THE HACKING PROJECT Session 9' "

	return totalrounds
end





def game
	introduction
	floor = 0
	round = 1
	while floor != 10
	dieresult = die_roll(round)
	floor = apply_result(dieresult, floor)
	round += 1 
	end
	totalrounds = endgame(round)
end






def average_finish_time
	totalrounds = 0

	100.times do
		totalrounds = totalrounds + game
	end

	average = totalrounds / 100
	puts "







	=====================================================
	CALCUL DE MOYENNE CONCERNANT LA REUSSITE D'UNE PARTIE
	=====================================================

	> Sur 100 parties : 

	- On obtient un total de #{totalrounds} tours effectués. 
	- Le nombre de tours moyen avant d'obtenir un succès est de #{average} tours !









	"
	
end





def perform
	game
	average_finish_time
end
		




game 