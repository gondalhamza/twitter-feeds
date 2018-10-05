require './lib/welcome'
class TwitterConfiguration
  def initialize
    puts "---Starting -----"
      @client = Twitter::REST::Client.new do |config|
        config.consumer_key        =  ENV['CONSUMER_KEY']
        config.consumer_secret     =  ENV['CONSUMER_SECRET']
        config.access_token        =  ENV['ACCESS_TOKEN']
        config.access_token_secret =  ENV['ACCESS_TOKEN_SECRET']
      end    
    puts "-----------"
    setup_twitter
  end

  def setup_twitter
    puts "---Setting Up-----"
    puts "-----------"
    return @client
  end

  def get_url_of_(tweet)
    (tweet.urls.count > 0) ? tweet.urls.first.attrs[:url] : "" 
  end

  def tweet_with_url
    collect_tweets = []
    puts "-----------"
    puts "Fetching.........."
    @client.search("http", result_type: "recent").collect do |tweet|
      collect_tweets << {"username" => "#{tweet.user.screen_name}", "created_at" => "#{tweet.created_at}", "desription" => "#{tweet.text}", "url" => "#{get_url_of_(tweet)}" }
    end
    collect_tweets
  end

  def tweet_with_url_in_range
    welcome = Welcome.new 
    output = welcome.get_input_dates
    range = output[0]..output[1]
    puts "-----------"
    puts "Fetching.........."
    collect_tweets = []
    @client.search("http", result_type: "recent").collect do |tweet|
      collect_tweets << {"username" => "#{tweet.user.screen_name}", "created_at" => "#{tweet.created_at}", "desription" => "#{tweet.text}", "url" => "#{get_url_of_(tweet)}" } if range === "#{tweet.created_at.to_date}" 
    end
    collect_tweets
  end

end