# my_app.rb
require 'sinatra/base'
require_relative 'player.rb'
require_relative 'game.rb'

class Battle < Sinatra::Base
  # ... app code here ...

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:Player_1_name])
    player2 = Player.new(params[:Player_2_name])
    $game = Game.new(player1, player2)
    redirect('/play')
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.player2)
    erb(:attack)
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
