class Welcome
	def self.screen
		puts "*****************************************************************"
		puts "*****************************************************************"
		puts "**-------------------------------------------------------------**"
		puts "**-------------------------------------------------------------**"
		puts "**-----------Welcome to Twitter Url Tweets Scrapper------------**"
		puts "**-------------------------------------------------------------**"
		puts "**-------------------------------------------------------------**"
		puts "**-------------------------------------------------------------**"
		puts "**-------------------------------------------------------------**"
		puts "**-------------------------------------------------------------**"
		puts "**-------------------------------------------------------------**"
		puts "**-------------------------------------------------------------**"
		puts "*****************************************************************"
		puts "  "
		puts "  "
		puts "**please select one option from the menu**"
		puts "** 1. Press 1 to get all the tweets including URLS."
		puts "** 2. Press 2 to get all the tweets including URLS With Specific Time Range."
		puts "** 3. Press Any Other Key To Exit."
		
		puts "**please DONT TYPE ANY KEY EXCEPT 1 or 2 or 3. THANK YOU**"
		puts "  "
		puts "*****************************************************************"
		option = gets.chomp
		return option
	end

	def self.get_input_dates
		puts "---------------Enter Start date in format(yyyy-mm-dd)"
    puts "---------------";start_date = gets.chomp
    puts "---------------Enter End date in format(yyyy-mm-dd)"
    puts "---------------";end_date = gets.chomp
    return start_date, end_date
  end
end