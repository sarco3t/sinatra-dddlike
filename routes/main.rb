
module Routes
  module Main
    def self.registered(app)
      app.get '/locations' do
        json Location::List.call.render
      end
    end
  end
end
