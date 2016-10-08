require 'sinatra/base'
# set :bind, '0.0.0.0'   # This is required to get webpack-dev-server to work

class MainApp < Sinatra::Base
  get '/health' do
    "good"
  end
end
