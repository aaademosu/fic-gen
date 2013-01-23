class Fiction_Generator
    def used_by(name)
        name.capitalize
    end

    def created_by
        @name = "Ademosu Ayodele"
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

    def location_adj
        location_adj = [ 'alternative-timeline', 'tolkeinesque', 'neo-noir', 'alternate-history', 'ancient', 'post-apocalyptic', 'dystopian', 'metaphorical', 'anachronistic', 'leather-clad', 'coal-powered', 'dragon-filled' ]
    end

    def location_noun
        location_noun = ['Scotland', 'America', 'Japan', 'Soviet Russia', 'Steampunk Britain', 'medieval Europe', 'Egyptian empire', 'Atlantis', 'terraformed Mars', 'Antarctica', 'one-way spaceflight', 'Outer Rim world', 'set from Road Warrior' ]
    end

    def protagonist
        protagonist = ['Ferris Bueller wannabe', 'student of metaphysics', 'milquetoast office drone', "Ferris Bueller wannabeee",
            'schlub with mild <abbr>OCD</abbr>', 'farm boy with dreams', 'techno-obsessed geek', 'brooding loner', 'wisecracking mercenary', 'idealistic revolutionary', 'journeyman inventor', 'collector of oddities', 'rocketman of the 24th century']
    end

    def discovery
        discovery = [ 'magic ring', 'arcane prophecy', 'dusty tome', 'crazy old woman', 'alien artifact', 'enchanted sword', 'otherworldly portal', 'dream-inducing drug', 'encrypted data feed', 'time-traveling soldier', 'exiled angel', 'talking fish', 'a dusty tome']
    end

    def adversary
        adversary = ['a megalomaniacal clown', 'a government conspiracy', 'a profit-obsessed corporation', 'a sneering witch', 'supernatural monsters', 
        'computer viruses made real', 'murderous robots', 'an army led by a sadist', 'forces that encourage conformity', 'a charismatic politician on the rise', 'humanity\'s selfish nature', 'his own insecurity vis-a-vis girls']
    end

    def assistant
        assistant = ['sarcastic female techno-geek', 'tomboyish female librarian', 'shape-shifting female assassin', 'leather-clad female in shades and red leather jacket', 'girl who\'s always loved him for himself', 'bookish female scholar with mousy brown hair', 'cherubic girl with pigtails and spunk', 'female who inexplicably becomes attracted to the damaged protagonist for unstated reasons' ]
    end

    def inventory
        inventory = [ 'wacky pet', 'electric chainsaw', 'closet full of assault rifles and one bullet', 'reference book', 'meat cleaver', 'facility with magic', 'condescending tone', 'discomfort in formal wear']  
    end

    def conflict 
        conflict = [ 'a fistfight atop a cable car', 'a daring rescue preceding a giant explosion', 'a demonic sacrifice', 'a philosophical argument punctuated by violence', 'a false victory with the promise of future danger', 'the invocation of a spell at the last possible moment', 'eternal love professed without irony', 'the land restored to health', 'authorial preaching through the mouths of the characters', "convoluted nonsense that squanders the readers' goodwill", 'wish-fulfillment solutions to real-world problems', 'a cliffhanger for the sake of prompting a series']
    end

    def title_adj
        title_adj = [ 'Time', 'Micro', 'Aero', 'Cosmo', 'Reve', 'Necro', 'Cyber', 'Astro', 'Psycho', 'Steam', 'Meta', 'Black' ]
    end

    def title_noun 
        title_noun = [ 'punks', 'mechs', 'noiacs', 'opolis', 'nauts', 'phages', 'droids', 'bots', 'blades', 'trons', 'mancers', 'Wars ']
    end

    def title
        "#{title_adj[rand(0...12)]}-#{(title_noun[rand(0...12)]).capitalize}"        
    end

    def story_generator
        story_noun = "#{location_noun[rand(0...13)]}" ; story_adjective = "#{location_adj[rand(0...12)]}" ; story_actor =  "#{protagonist[rand(0...13)]}" ; story_discovers = "#{discovery[rand(0...13)]}"
        story_foe = "#{adversary[rand(0...12)]}" ; story_helper = "#{assistant[rand(0...8)]}" ; story_tool = "#{inventory[rand(0...8)]}" ; story_conflict = "#{conflict[rand(0...12)]}"     
        composed_story = "In #{generate_identifier(story_adjective)} #{story_adjective} #{story_noun}, a young #{story_actor} stumbles across #{generate_identifier(story_discovers)} #{story_discovers} which spurs him into conflict with #{story_foe}, with the help of a #{story_helper} and her #{story_tool}, culminating in #{story_conflict}."
    end

    def story
        puts "  The fiction titled: #{title}, reads:"
        puts story_generator        
    end

    def story_list
        puts
        puts "  Type any 'n' to proceed or any character other than 'n' to exit at any time."
        prompt; @input = gets.chomp
        while @input == 'n'
            puts story
            prompt; @input = gets.chomp
        end
    end

    def output(name)        
        puts
        puts "The generator created by Ademosu, is being used by #{used_by(name)}"
        puts story
    end
end
