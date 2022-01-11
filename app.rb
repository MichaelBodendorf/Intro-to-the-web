require "sinatra"
require "sinatra/reloader" if development?

Sinatra::Reloader

# def initialize
#   @random_name = ["Amigo", "Misty", "Almond"].sample
# end

get "/" do 
  "hello!"
end

get "/secret" do
  "hello Marcus and Michael!"
end
  
get '/random_cat' do 
  @random_name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

post '/named_cat' do 
  @random_name = params[:name]
  erb(:index)
end

get '/cat_form' do 
  # p params
  # @random_name = params[:name]
  erb :cat_form
end