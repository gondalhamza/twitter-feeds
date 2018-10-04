class TwitterConfiguration
  def initialize
    puts "---Starting -----"
    puts "-----------"

  end

  def setup_twitter
    puts "Setting Up"
    puts "-----------"
      @client = Twitter::Streaming::Client.new do |config|
        config.consumer_key        = "ENV[YOUR_CONSUMER_KEY]"
        config.consumer_secret     = "YOUR_CONSUMER_SECRET"
        config.access_token        = "YOUR_ACCESS_TOKEN"
        config.access_token_secret = "YOUR_ACCESS_SECRET"
      end    
    puts "-----------"
    return @client
  end

  def get_data_from_centre_url(url)
    # puts "centre_url = " + centre_url
    # page = HTTParty.get(centre_url)
    # centre_page_detail = Nokogiri::HTML(page)
  end

end