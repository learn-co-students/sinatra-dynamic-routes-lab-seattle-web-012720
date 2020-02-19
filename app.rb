require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse 
  end

  get '/square/:number' do
    @number = params[:number].to_i ** 2
    @number.to_s
  end

  get '/say/:number/:phrase' do
      params[:phrase] * params[:number].to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params.collect {|key, word| word }.join(' ') + "."
  end

  get '/:operation/:number1/:number2' do
    operations = {
      "add" => "+",
      "subtract" => "-",
      "multiply" => "*",
      "divide" => "/"
    }
    op = operations[params[:operation]]
    num1 = params[:number1]
    num2 = params[:number2]
    eval("#{num1} #{op} #{num2}").to_s
  end

end