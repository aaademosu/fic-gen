require "#{File.dirname(__FILE__)}/lib/vocab"

class Fiction_Generator
	def created_by(name)
        name.capitalize
	end

	def title
		"#{title_adj[rand(0...12)]}-#{(title_noun[rand(0...12)]).capitalize}"
	end

    def generate_identifier(identifier)
    	definate_id = ["an", "a"]
    	vowel = "AEIOUaeiou"
    	consonant = "BCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyz"
    	if vowel.include? identifier[0]
    		definate_id[0]
    	elsif consonant.include? identifier[0]
    		definate_id[1]
    	end
    end

	def story_generator
	 	story_noun = "#{location_noun[rand(0...13)]}"
	 	story_adjective = "#{location_adj[rand(0...12)]}" 
	    story_actor =  "#{protagonist[rand(0...13)]}"
	    story_discovers = "#{discovery[rand(0...13)]}"
	    story_foe = "#{adversary[rand(0...12)]}"
	    story_helper = "#{assistant[rand(0...8)]}"
	    story_tool = "#{inventory[rand(0...8)]}" 
	    story_conflict = "#{conflict[rand(0...12)]}"	    
	    composed_story = "In #{generate_identifier(story_adjective)} #{story_adjective} #{story_noun}, a young #{story_actor} stumbles across #{generate_identifier(story_discovers)} #{story_discovers} which spurs him into conflict with #{story_foe}, with the help of a #{story_helper} and her #{story_tool}, culminating in #{story_conflict}."
    end

	def story
		puts "  The fiction titled: #{title}, reads:"
		puts story_generator		
	end

    def story_list
		puts
		puts "  Type any 'n' to proceed or 'quit' to exit at any time."
		prompt; @input = gets.chomp
		while @input == 'n'
			puts story
			prompt; @input = gets.chomp
		end
=begin
	until @input == 'quit'
		puts "  Type 'c' at the prompt to continue or 'quit' to exit at any time."
		puts "You generated another story: "
		puts story
		prompt; @input = gets.chomp
	end
=end
    end

    def output(name)		
		puts
		puts "The generator created by Ademosu, is being used by #{created_by(name)}"
		puts story
	end
end

