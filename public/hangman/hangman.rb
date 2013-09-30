!#/usr/env ruby
#user input for word length


puts "How long would you like the word to be?"
valcount= ARGV[0]
arry= File.foreach('words.txt') {|s| puts s.count(s)} #returns the number of each string independantly
arrx= File.foreach('words.txt') {|s| puts s} #returns the word per line
selected=
hidden= puts "_ "*valcount #add blanks for each letter of max length
File.select!{|valcount| valcount=~ arry} #reduces list to only matching

#Start breaking down list further by characters here

guess = 10
i = 0

while i>10
	if #next user input = .match? possibilities
		# place character(s) in proper position
		next

	else
		i++
		#add to already guessed words chosen[]
		puts #{ARGV[]} + " is not part of the word"
		next



f= File.readlines('words.txt')



# selected= words[rand(words.size)].chomp
# attempt= Array.new(selected.length, " _")
chosen= []
steps = 10



