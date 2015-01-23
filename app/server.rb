require 'sinatra'
require 'sinatra/partial'

set :partial_template_engine, :erb
set :public_folder, Proc.new { File.join(root, '..', 'public') }

get '/' do
  @color = params[:colour]
  erb :index
end

post '/' do
  @search = Search.new(params)
  redirect to '/result'
end

get '/result' do
    puts @search
end
