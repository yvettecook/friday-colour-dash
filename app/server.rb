require 'sinatra'
require 'sinatra/partial'
require './models/search'

require 'faraday'
require 'json'

enable :sessions

set :partial_template_engine, :erb
set :public_folder, Proc.new { File.join(root, '..', 'public') }

get '/' do
  erb :index
end

post '/' do
  colour = params[:colour]
  @search = Search.new(colour)
  search_term = @search.generate_search
  response = Faraday.get(search_term)
  json = JSON.parse(response.body)
  session[:first_result] = get_first_json_results(json)
  session[:second_result] = get_second_json_results(json)
  session[:colour] = @search.colour
  session[:noun] = @search.noun
  # puts "***"
  # puts get_json_results(json)
  # puts "***"
  redirect to '/result'
end

get '/result' do
  @first_result_address = session[:first_result]
  @second_result_address = session[:second_result]
  @colour = session[:colour]
  @noun = session[:noun]
  @test = "http://www.w3schools.com/images/w3logotest2.png"
  erb :result
end


def get_first_json_results(json)
  first_result = json["items"][0]["pagemap"]["cse_image"][0]["src"]
end

def get_second_json_results(json)
  first_result = json["items"][1]["pagemap"]["cse_image"][0]["src"]
end
