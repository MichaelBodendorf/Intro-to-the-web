require "sinatra"
require "sinatra/reloader" if development?

# Sinatra::Reloader

get "/" do 
  "hello!"
end

get "/secret" do
  "hello Marcus and Michael!"
end
  