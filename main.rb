require 'rubygems'
require 'bundler/setup'

require 'twitter'
require "awesome_print"
require './lib/configuration'
require './lib/welcome'
require 'dotenv/load'
require 'httparty'
require 'json'
require 'pry'
require 'csv'
require 'date'

class Main
  def initialize
    @conf = TwitterConfiguration.new
  end

  def twitter_instance
    @conf
  end

  def self.welcome
  	output = Welcome.screen
  end
end

#==========================================================#
begin
	loop do
		option = Welcome.screen
		if (option.eql? "1") || (option.eql? "2")
		  puts "-----------"
		  puts "Fetching.........."
			main = Main.new
			option.eql? "1" ? (tweets = main.twitter_instance.tweet_with_url) : (tweets = main.twitter_instance.tweet_with_url_in_range)
		 	ap tweets if tweets
		 	puts "--------------------press any key to continue................"
		 	input = gets
		elsif option.eql? "3"
		 	break
		end
	end
rescue => e
  puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
  puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
  puts "Problem with your Internet Connection Unable to Complete the Process"
  puts e
  puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
  puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
end
#==========================================================#