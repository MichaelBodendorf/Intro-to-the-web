require "sinatra"
require "sinatra/reloader" if development?

Sinatra::Reloader

get "/" do 
  "hello!"
end

get "/secret" do
  "hello Marcus and Michael!"
end
  
get '/cat' do 
  "<div style='border: 3px dashed black'>
    <img src='https://m.media-amazon.com/images/I/51KNy3fAsgL._AC_.jpg'>
  </div>"
end