require_relative 'config/environment'
require_relative 'models/piglatinizer'
require 'pry'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    instance = PigLatinizer.new
    @analyzed_text = instance.to_pig_latin(params["user_phrase"])
    erb :results
  end

end
