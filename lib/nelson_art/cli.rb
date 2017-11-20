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
		choice = gets.strip.upcase
		case choice
		when "1"
			nelson_schedule
		when "2"
			exhibit_list
		when "3", "EXIT"
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
			welcome
		end
	end

	def exhibit_list
		puts "exhibit list"
		welcome
	end

	def goodbye
		puts "Goodbye. Please come back for information on future Nelson Art Gallery exhibits"
	end
end

