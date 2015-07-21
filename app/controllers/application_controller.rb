require_relative "../../config/environment"
require_relative "../models/tweet.rb"

class ApplicationController < Sinatra::Base
  
  set :views, "app/views"
  set :public, "public"
  
  get "/" do
    @tweet_1 = Tweet.new("Barack Obama", ".")
    @tweet_2 = Tweet.new("Kanye West", "Imma let you finish but")
    @tweet_3 = Tweet.new("God", "In the beginning...")
    @tweets = [@tweet_1, @tweet_2, @tweet_3]
    erb :tweets
  end
  
end