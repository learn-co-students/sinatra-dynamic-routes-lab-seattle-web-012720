require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    username = params[:name].reverse
    username
  end

  get '/square/:number' do
    str = params[:number]
    num = str.to_i
    result = num*num
    result.to_s
  end

  get '/say/:number/:phrase' do
    num = params[:number].to_i
    phrase = params[:phrase]
    phrase * num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    w1 = params[:word1]
    w2 = params[:word2]
    w3 = params[:word3]
    w4 = params[:word4]
    w5 = params[:word5]
    "#{w1} #{w2} #{w3} #{w4} #{w5}."
  end

  get '/:operation/:number1/:number2' do
    str1 = params[:number1]
    str2 = params[:number2]
    num1 = str1.to_i
    num2 = str2.to_i
    if params[:operation] == "add"
      add = (num1 + num2).to_s
    elsif params[:operation] == "subtract"
      subt = (num1 - num2).to_s
    elsif params[:operation] == "multiply"
      mul = (num1*num2).to_s
    elsif params[:operation] == "divide"
      div = (num1/num2).to_s
    end
  end

end