require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    erb :backwards
  end

  get '/square/:number' do
    @number = params[:number]
    ans = (@number.to_i)**2
    "#{ans.to_s}"
  end

  get '/say/:number/:phrase' do
    @i = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase*@i}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
    
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    if @operation == "add"
      answer = @num1 + @num2
    elsif @operation == "subtract"
      answer = @num1 - @num2
    elsif @operation == "multiply"
      answer = @num1 * @num2
    elsif @operation == "divide"
      answer = @num1 / @num2
    else
      answer = "Unable to perform this operation"
    end

    "#{answer.to_s}"
  end



end