require 'sinatra'
require 'sinatra/partial'
require './models/search'

enable :sessions

set :partial_template_engine, :erb
set :public_folder, Proc.new { File.join(root, '..', 'public') }

@results = @results

get '/' do
  erb :index
end

post '/' do
  colour = params[:colour]
  @search = Search.new(colour)

  create_search_record(@search.colour, @search.noun, search_term)
  redirect to '/result'
end

get '/result' do
  @first_result_address = session[:first_result]
  @second_result_address = session[:second_result]
  @colour = session[:colour]
  @noun = session[:noun]
  @first_search_details = session[:first_search]
  puts "***"
  puts session[:first_search]
  puts "***"
  erb :result
end

#note index starts at 0
def get_json_result(json, index)
  return json["items"][index]["pagemap"]["cse_image"][0]["src"]
end

def create_search_record(colour, noun, query)
  last_search = Hash.new
  last_search["colour"] = colour
  last_search["noun"] = noun
  last_search["query"] = query
  last_search["time"] = Time.now
  return last_search
end
