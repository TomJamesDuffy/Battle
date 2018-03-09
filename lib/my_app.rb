# my_app.rb
require 'sinatra/base'

class Battle < Sinatra::Base
  # ... app code here ...

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player1 = params[:Player_1_name]
    @player2 = params[:Player_2_name]
    session[:player1] = @player1
    session[:player2] = @player2
    redirect('/play')
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
