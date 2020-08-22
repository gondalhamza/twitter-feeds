require 'date'

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

	def get_input_dates
		start_date , end_date = nil
    
    loop do
			puts "-------*--------Enter Start date in format(yyyy-mm-dd)"
    	puts "-------*--------";start_date = gets.chomp
			if is_valid_date(start_date)
				break
			end
		end
    
    loop do
    	puts "-------*--------Enter End date in format(yyyy-mm-dd)"
    	puts "-------*--------";end_date = gets.chomp
			if is_valid_date(end_date)
				break
			end
		end
    
    return start_date, end_date
  end

  def is_valid_date(string)
	  format_ok = string.match(/\d{4}-\d{2}-\d{2}/)
		y, m, d = string.split '-'
	  parseable = (Date.valid_date? y.to_i, m.to_i, d.to_i) rescue false

	  if string == 'never' || format_ok && parseable
	    return true
	  else
	    puts "Date is not valid, Please user valid Format"
	    return false
	  end
  end
end