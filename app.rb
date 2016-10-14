require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    "#{params["name"].reverse}"
  end

  get '/square/:number' do
    "#{params["number"].to_i * params["number"].to_i}"
  end

  get '/say/:number/:phrase' do
    erb :say
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    erb :say_word
  end

  get '/:operation/:number1/:number2' do
    erb :operation
  end

end