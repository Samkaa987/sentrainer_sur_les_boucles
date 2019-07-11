
def ask_pyramid_floor
	puts "Combien d'étage veux-tu dans ta pyramide ?"
	print ">"
	pyramide_floor = gets.to_i

	if pyramide_floor %2 == 0
		puts "Voici ta pyramide :"
		return pyramide_floor


	else puts "Désolé, tu dois choisir un nombre pair !"
		ask_pyramid_floor
	end

end






def half_pyramid(pyramide_floor)
	i = 1
	k = pyramide_floor
	t = pyramide_floor

	i.upto(k) do
	  t.times do
	    print ' '
	  end

	  (i - 1).times do
	    print '#'
	  end

	  print "\n"

	  t -= 1
	  i += 1
	end	
end





def full_pyramid(pyramide_floor)
	k = pyramide_floor

	1.upto(k) do |p|
		space = (k - p)
	  space.times do
	    print ' '
	  end

	  (2 * p - 1).times do
	    print '#'
	  end

	  print "\n"
	end	
end







def wtf_pyramid(pyramide_floor)
	k = pyramide_floor

	1.upto(k) do |p|
		space = (k - p)
	  space.times do
	    print ' '
	  end

	  (2 * p - 1).times do
	    print '#'
	  end

	  print "\n"
	end	

	k.downto(1) do |p|
		space = (k - p)
	  space.times do
	    print ' '
	  end

	  (2 * p - 1).times do
	    print '#'
	  end

	  print "\n"
	end	
end






def perform
	pyramide_floor = ask_pyramid_floor
	wtf_pyramid(pyramide_floor)
end

perform