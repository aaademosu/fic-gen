require "#{File.dirname(__FILE__)}/fiction_gen"

	describe Fiction_Generator do

	before(:all) do
	 	@fict_gen = Fiction_Generator.new
	end

	it "should provide correct indefinate identifiers of 'an' for the story" do
		@fict_gen.generate_identifier("alternate-history").should == "an"
	end

	it "should provide correct indefinate identifiers of 'a' for the story" do
		@fict_gen.generate_identifier("coal-powered").should == "a"
	end

	it "should provide a means to store up to four stories for comparison" do
		@fict_gen.story_list.size.should == 4
	end

	it "should provide a way to swap a saved story for a new one" do
		@fict_gen.swap_story(1).should be_true
	end

	it "should specify a random real day, month, year for the story as part of the title" do
		@fict_gen.random_date.should be_true
	end

	it "should include day/month/year separator as part of random date" do
		@fict_gen.random_date.include?("/").should be_true
	end

	 after(:all) do
	    puts "this Spring 2012 fiction generator was created by #{@fict_gen.created_by}"
	    puts "who has the student id of #{@fict_gen.student_id}"
	    puts "your story is called #{@fict_gen.title} "
	    puts "and the story reads like this:"
	    puts @fict_gen.story
	end
end
