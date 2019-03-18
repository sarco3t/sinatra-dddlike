
module Routes
  module Main
    def self.registered(app)
      app.get '/users' do
        # op = User::List.(params)
        # [200, UserRepresenter.new(op['model'])]
      end
    end
  end
end
