require 'sinatra'
require 'sinatra/partial'
require './models/search'

set :partial_template_engine, :erb
set :public_folder, Proc.new { File.join(root, '..', 'public') }

get '/' do
  erb :index
end

post '/' do
  @color = params[:colour]
  @search = Search.new("red")
  puts "***"
  puts @search.inspect
  puts "***"
  redirect to '/result'
end

get '/result' do
  
  erb :result
end
