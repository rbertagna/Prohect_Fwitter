class Tweet
  attr_accessor :username, :content
 
  ALL_TWEETS = []
  
  def initialize(username, content)
    @username = username
    @content = content
    ALL_TWEETS.push(self)
  end 
  
  def self.all
    ALL_TWEETS
  end
  #should initialize with content and a username
  #the tweet class keep track of all of the instances if tweets that get created
end

tweet1 = Tweet.new("Ian", "I'm too blessed to be stressed")
tweet2 = Tweet.new("Donald Trump", "Time to make the right move #changeamerica")
@all_tweets = Tweet.all
puts @all_tweets
