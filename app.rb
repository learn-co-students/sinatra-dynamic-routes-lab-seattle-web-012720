require_relative "config/environment"

class App < Sinatra::Base
  get "/reversename/:name" do
    @user_name = params[:name]
    @user_name.reverse
  end

  get "/square/:number" do
    @squared_number = params[:number].to_i * params[:number].to_i
    "#{@squared_number}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @string = ""
    @number.times do @string = @string + @phrase end
    @string
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} " + "#{@word2} " + "#{@word3} " + "#{@word4} " + "#{@word5}."
  end

  get "/:operation/:number1/:number2" do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @operation = params[:operation]
    if @operation == "subtract"
      @number3 = @number1 - @number2
    elsif @operation == "add"
      @number3 = @number1 + @number2
    elsif @operation == "multiply"
      @number3 = @number1 * @number2
    elsif @operation == "divide"
      @number3 = @number1 / @number2
    end
    "#{@number3}"
  end
end

#for the last one, url won't contain a symbol, it will contain a word.
