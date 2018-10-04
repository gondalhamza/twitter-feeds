require 'rubygems'
require 'bundler/setup'

require 'twitter'
require './lib/configuration'
require 'dotenv/load'
require 'httparty'
require 'json'
require 'pry'
require 'csv'
require 'date'
require 'active_support/core_ext/string/filters'

class Main
  def initialize
    @conf = TwitterConfiguration.new
  end

  def configuration_instance
    @conf
  end

end


#==========================================================#
begin
	
	puts "=============================="
	puts "Hello World"
	puts "=============================="
  main = Main.new
  
rescue => e
  puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
  puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
  puts "Problem with your Internet Connection Unable to Complete the Process"
  puts e
  puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
  puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

end


# binding.pry
#==========================================================#