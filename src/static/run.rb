require 'sinatra'

set :public_folder, File.dirname(__FILE__)

get '/favicon.ico' do
  halt 404
end

get '/*' do
  send_file 'index.html'
end