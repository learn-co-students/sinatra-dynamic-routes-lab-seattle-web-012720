require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    number = params[:number].to_i
    @result = number * number
    "#{@result}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    "#{(@phrase * @number)}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    string = params[:operation]
    operation = convert(string)

    num1 = params[:number1]
    num2 = params[:number2]
    @answer = eval"#{num1} #{operation[1]} #{num2}"
    "#{@answer}"
  end

  def convert(operation)
    hash = {
      "add" => "+", 
    "subtract" => "-", 
    "multiply" => "*", 
    "divide" => "/"}
    hash.find do |k,v| 
      if k == operation
        v
      end
    end
  end

end