require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse!}!"
  end

  get '/square/:number' do
    @number_sq = params[:number].to_i * params[:number].to_i
    "#{@number_sq}!"
  end

  get '/say/:number/:phrase' do
    phrase_num = ""
     params[:number].to_i.times do
       phrase_num += params[:phrase]
     end
     phrase_num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

    answer = 'Unable to perform this operation'

    case params[:operation]
    when 'add'
      answer = (number1 + number2).to_s
    when 'subtract'
      answer = (number1 - number2).to_s
    when 'multiply'
      answer = (number1 * number2).to_s
    when 'divide'
      answer = (number1 / number2).to_s
    end
  end




  # get '/:operation/:number1/:number2' do
  #   operation = params[:operation]
  #   number1 = params[:number1].to_i
  #   number2 = params[:number2].to_i
  #
  #   if operation == "add"
  #     result = number1 + number2
  #   elsif operation = "subtract"
  #     result = number1 - number2
  #   elsif operation == "multiply"
  #     result = number1 * number2
  #   elsif operation == "divide"
  #     result = number1 / number2
  #   else
  #     result = "Do not do"
  #   end
  #   result.to_s
  # end

end
