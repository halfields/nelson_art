class NelsonArt::CLI

	def call
		welcome
		first_choice
	end

	def welcome
		puts "Welcome to 'What's Happening at the Nelson'"
		puts "Would you: 1. like to see the Nelson Art Gallery's schedule, or"
		puts "           2. like to see a listing of current and future exhibits, or"
		puts "           3. exit"
		print "Enter a number: "
	end

	def first_choice
		choice = gets.strip.downcase
		case choice
		when "1"
			nelson_schedule
		when "2"
			exhibit_list
		when "3", "exit"
			goodbye
		else
			puts "I don't recognize your choice. Please enter a number, (1, 2, or 3)."
			welcome
		end
	end

	def nelson_schedule
		puts "		Hours"
		puts "Wed: 10am-5pm"
		puts "Thur: 10am-9pm"
		puts "Fri: 10am-9pm"
		puts "Sat: 10am-5pm"
		puts "Sun: 10am-5pm"
		puts "Mon-Tues: CLOSED"
		puts
		puts "Closed on Holidays"
	  puts "New Year’s Day"
		puts "Independence Day"
		puts "Thanksgiving"
	  puts "Christmas Eve"
		puts "Christmas Day"
		puts
		puts "Enter 'back' to see the previous menu."
		if gets.strip.upcase == "BACK"
			call
		end
	end

	def exhibit_list
	  puts "The Nelson's current or upcoming list of exhibits:"
	  list = NelsonArt::Scraper.scrape_exhibit_index_page
	  list.each.with_index(1) {|exhibit, index| puts "#{index}. #{exhibit.name}"}
	  puts "Enter a number for more information on an exhibit, or type exit to leave site."
	  input = nil
	  until input == "exit"
	  	input = gets.strip.downcase
		  if 1..(list.size).include?(input)
		  	exhibit = NelsonArt::Scraper.scrape_exhibit_profile_page(list[input-1].url)
		  	exhibit.display
		  	puts "Would you like to see the list of exhibits again? Enter y or exit."
		  	input = gets.strip.downcase
		  	if input == "y"
		  		exhibit_list
		  	elsif input == "exit"
		  		goodbye
		  	else
		  		puts "I don't recognize your choice. Enter y or exit"
		  	end
		  else
		  	puts "I don't recognize your choice. Enter a number or 'exit'"
		  end
		end
		goodbye
	end

	def goodbye
		puts "Goodbye. Please come back for information on future Nelson Art Gallery exhibits"
	end
end

