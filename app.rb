require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    number = params[:number].to_i
    square = number ** 2
    square.to_s 
  end

  get '/say/:number/:phrase' do 
    number = params[:number].to_i
    string = params[:phrase]
    array=[]
    number.times do
      array << string
    end
    array
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
   index = 1
    array = []
   while index < 6 do
    input = "word#{index}"
    array << params[input.to_sym]
    index += 1
   end
   var = array.join(" ")
   var + "."
  end
  
  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
  case operation
  when "add"
      (num1 + num2).to_s
  when "subtract"
    (num1 - num2).to_s
  when "multiply"
      (num1 * num2).to_s
  when "divide"
     (num1 / num2).to_s
  end
 
 end
 end

