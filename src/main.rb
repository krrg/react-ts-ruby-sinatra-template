require 'sinatra/base'

class OpenSmimeApp < Sinatra::Base
    
    get "/" do
        "Hello from Sinatra"
    end

end 