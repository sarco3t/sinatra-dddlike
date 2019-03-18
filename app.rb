require_relative './config/init'
require_relative './routes/main'

class MainApp < Sinatra::Base
  set :root, File.dirname(__FILE__)
  enable :logging
  register Routes::Main
  configure :development do
    register Sinatra::Reloader
  end
end
