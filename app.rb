
require './environment'

module FormsLab

  class App < Sinatra::Base
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirates])

      params[:pirates][:ships].each do |details|
        Ship.new(details)
      end

      @ships = Ship.all

      <p><input type="text" name="pirate[name]"></p>
        <p><input type="text" name="pirate[weight]"></p>
        <p><input type="text" name="pirate[height]"></p>
        <p><input type="text" name="pirate[ships][][name]"></p>
        <p><input type="text" name="pirate[ships][][type]"></p>
        <p><input type="text" name="pirate[ships][][booty]"></p>
    end

  end

end
