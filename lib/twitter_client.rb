class TwitterClient

  @@client ||= begin
    Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['CONSUMER_KEY']
      config.consumer_secret     = ENV['CONSUMER_SECRET']
      config.access_token        = ENV['ACCESS_TOKEN']
      config.access_token_secret = ENV['ACCESS_SECRET']
    end
  end

  def self.tweet(username = 'amiedes94')
    message = MessageTemplate.generate_message_for_user(username)
    @@client.update(message)
  end

end
