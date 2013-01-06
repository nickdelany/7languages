num = rand(10)

begin

	puts "Guess: "
	x = gets().to_i

	puts "higher" if (x < num) 
	puts "lower" if (x > num) 

end while x != num

puts "Yay!"


# howlongdoesthisneed2b?
# I'm sick of OpenID