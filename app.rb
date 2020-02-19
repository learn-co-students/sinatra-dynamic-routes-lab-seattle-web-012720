require_relative "config/environment"

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse
  end

  get "/square/:number" do
    @tosq = params[:number].to_i
    @sq = (@tosq * @tosq)
    @sq.to_s
  end

  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    @ph = params[:phrase]
    @all = []
    @num.times { @all << @ph }
    @all
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @str = ""
    @str << @word1 << " " << @word2 << " " << @word3 << " " << @word4 << " " << @word5 << "."
  end

  get "/:operation/:number1/:number2" do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @opp = params[:operation]
    if @opp == "add"
      @sum = @num1 + @num2
      @sum.to_s
    elsif @opp == "subtract"
      @sum = @num1 - @num2
      @sum.to_s
    elsif @opp == "multiply"
      @sum = @num1 * @num2
      @sum.to_s
    elsif @opp == "divide"
      @sum = @num1 / @num2
      @sum.to_s
    end
  end
end
