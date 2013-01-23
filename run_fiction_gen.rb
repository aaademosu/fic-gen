require "#{File.dirname(__FILE__)}/fiction_class"
require "#{File.dirname(__FILE__)}/lib/to_eng"

def prompt
	print "> "
end

@fict_gen = Fiction_Generator.new
@input = "start" # JUST A DUMMY VARIABLE BCOS OF D FACT THAT I AM USING DOWNCASE WHICH WLD RETURN NIL AS I CANT USE DOWNCASE ON A NIL CLASS
begin 
	puts "Welcome to The Electro-Plasmic Hydrocephalic Genre-Fiction Generator"
	puts "  Please supply your name."
	prompt; name = gets.chomp
	count_name = name.split
	if count_name.count != 1
		puts "Please provide a correct name. "
		puts " "
	elsif count_name.count == 1
		@fict_gen.output(name)
		@fict_gen.story_list
		puts "Thank you, bye. Please come again some other time."
		puts " "
	end
end while @input.downcase == 'quit'
	
