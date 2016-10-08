require 'sinatra'

set :bind, '0.0.0.0'   # This is required to get webpack-dev-server to work

get '/' do

  "Hello world from the API"
end
