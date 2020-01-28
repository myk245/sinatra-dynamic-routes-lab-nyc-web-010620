require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    # accepts a name and renders the name backwards
    @name = params[:name].reverse
    "#{@name}"
  end 

  get '/square/:number' do 
    # accepts a number and returns the square of that number
    @square = params[:number].to_i ** 2
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    # accepts a number and a phrase and returns that phrase in a single string the number of times given
    @number = params[:number].to_i
    @phrase = params[:phrase]
    return_string = ""

    @number.times do 
      return_string += @phrase 
    end 
    return_string 
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    # accepts five words and returns a string containing all five words 
    # (i.e. word1 word2 word3 word4 word5)
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end 

  get '/:operation/:number1/:number2' do
    # accepts an operation (add, subtract, multiply or divide) 
    # and performs the operation on the two numbers provided, returning a String. 
    # For example, going to /add/1/2 should render 3 as a String
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    case @operation 
    when "add"
      answer = (@number1 + @number2).to_s
    when "subtract"
      answer = (@number1 - @number2).to_s
    when "multiply"
      answer = (@number1 * @number2).to_s
    when "divide"
      answer = (@number1 / @number2).to_s
    end 

  end 
  
end