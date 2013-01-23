# require "#{File.dirname(__FILE__)}/fiction_class"
require "#{File.dirname(__FILE__)}/fiction_gen"

def prompt
	print "> "
end

@fict_gen = Fiction_Generator.new
@input = "start" 
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
		puts "Thank you, please come again some other time."
		puts " "
	end
end until @input.downcase != 'n'

