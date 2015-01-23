require 'sinatra'
require 'sinatra/partial'
require './models/search'

require 'faraday'
require 'json'

set :partial_template_engine, :erb
set :public_folder, Proc.new { File.join(root, '..', 'public') }

get '/' do
  erb :index
end

post '/' do
  colour = params[:colour]
  @search = Search.new(colour)
  puts "***"
  puts @colour
  puts @search.generate_search
  puts "***"
  search_term = @search.generate_search
  response = Faraday.get(search_term)
  json = JSON.parse(response.body)
  puts "***"
  puts json
  puts "***"
  redirect to '/result'
end

get '/searching' do

end



get '/result' do

  erb :result
end
