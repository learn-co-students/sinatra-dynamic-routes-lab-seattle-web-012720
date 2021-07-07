require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number]
    @square = @num.to_i * @num.to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @string = ""
    @num.times do
      @string = @string + @phrase
    end
    "#{@string}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word_1 = params[:word1]
    @word_2 = params[:word2]
    @word_3 = params[:word3]
    @word_4 = params[:word4]
    @word_5 = params[:word5]
    "#{@word_1} #{@word_2} #{@word_3} #{@word_4} #{@word_5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num_1 = params[:number1].to_i
    @num_2 = params[:number2].to_i
    # @sum = 0
    if @operation == "add"
      @sum = @num_1 + @num_2
      "#{@sum}"
    elsif @operation == "subtract"
      @difference = @num_1 - @num_2
      "#{@difference}"
    elsif @operation == "multiply"
      @product = @num_1 * @num_2
      "#{@product}"
    elsif @operation == "divide"
      @quotient = @num_1 / @num_2
      "#{@quotient}"
    end

  end

end