require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @user = params[:name]
    erb :rev_name
  end

  get '/square/:number' do 
    @number = params[:number]
    erb :square
  end

  get '/say/:number/:phrase' do
    @num = params[:number]
    @phrase = params[:phrase]
    erb :repeat
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @words = []
    @words << params[:word1]
    @words << params[:word2]
    @words << params[:word3]
    @words << params[:word4]
    @words << params[:word5]
    erb :concat
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1]
    @num2 = params[:number2]
    erb :operate
  end
end