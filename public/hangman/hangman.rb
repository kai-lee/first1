!#/usr/env ruby
#user input for word length

def possibilities(arrx) #convert shortened array into characters
	y= File.select!{|valcount| valcount =~ arry} #break down array into strings of specified length

	#need to count every letter from each string and match with positions and count the occurence of said letters

end 



	puts "How long would you like the word to be?"
	valcount= gets.chomp

	arry= File.foreach('words.txt') {|s| puts s.count(s)} #returns the number of each string independantly
	arrx= File.foreach('words.txt') {|s| puts s} 	#returns the word per line

	hidden= puts "_ "*valcount 			#add blanks for each letter of max length
	File.select!{|valcount| valcount=~ arry}	#reduces list to only matching

	#Start breaking down list further by characters here

	guess = 10
	i = 0

	while i>10
	puts "Guesses Used " + i + " of " + guess + "\n"
	ch=gets.chomp
		if ch.match=possibilities
			#function call to insert most common position of #{ch}
			# place character(s) in proper position
			# redraw hidden function with most common position of ch filled in with actual

		else
			i++
			#add to already guessed words chosen[]
			puts #{ch} + " is not part of the word"
			next





