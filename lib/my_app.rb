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

  before do
    @game = Game.instance
  end


  post '/names' do
    player1 = Player.new(params[:Player_1_name])
    player2 = Player.new(params[:Player_2_name])
    @game = Game.create(player1, player2)
    redirect('/play')
  end

  get '/play' do
    erb(:play)
  end

  post '/play' do
    @game.switch
    redirect('/play')
  end

  get '/attack' do
    @game.attack
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
