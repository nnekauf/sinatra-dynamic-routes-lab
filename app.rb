require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name'do
    @name = params[:name]
    @name.reverse
  end
    get '/square/:number'do
      @number = params[:number]
      @square = @number.to_i * @number.to_i
      @square.to_s
    end 

    get '/say/:number/:phrase'do
      @number = params[:number].to_i
      @phrase = params[:phrase]
        # @number.times do
          @phrase * @number
        #end
    end 

    get '/say/:word1/:word2/:word3/:word4/:word5'do
      @word1 = params[:word1]
      @word2 = params[:word2]
      @word3 = params[:word3]
      @word4 = params[:word4]
      @word5 = params[:word5]
      "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
    end
    get '/:operation/:number1/:number2'do
    # that accepts an operation (add, subtract, multiply or divide) 
    # and performs the operation on the two numbers provided, returning a String. 
    # For example, going to /add/1/2 should render 3 as a String.
      @operation = params[:operation]
      @number1 = params[:number1].to_i
      @number2 = params[:number2].to_i
      if @operation == "add"
        @ans = @number1 + @number2
        @ans.to_s
      elsif @operation == "subtract"
        @ans = @number1 - @number2
        @ans.to_s
      elsif @operation == "multiply"
        @ans = @number1 * @number2
        @ans.to_s
      elsif @operation == "divide"
        @ans = @number1 / @number2
        @ans.to_s
        end
    end
end